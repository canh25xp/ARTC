#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'EOF'
Usage: maketape.sh [--force] [tape-name]

Converts every *.tape file in the repository into a GIF using VHS.

Options:
  --force         Rebuild GIFs even if they already exist.
  tape-name       Optional base name (with or without .tape) to render only that tape.
EOF
}

force=false
tape_filter=""

while [[ $# -gt 0 ]]; do
  case "$1" in
  --force)
    force=true
    shift
    ;;
  --help | -h)
    usage
    exit 0
    ;;
  --)
    shift
    break
    ;;
  -*)
    echo "Unknown option: $1" >&2
    echo >&2
    usage >&2
    exit 1
    ;;
  *)
    if [[ -n $tape_filter ]]; then
      echo "Error: multiple tape names provided: '$tape_filter' and '$1'." >&2
      echo >&2
      usage >&2
      exit 1
    fi
    tape_filter="$1"
    shift
    ;;
  esac
done

if [[ $# -gt 0 ]]; then
  echo "Error: unexpected arguments: $*" >&2
  echo >&2
  usage >&2
  exit 1
fi

if [[ -n $tape_filter ]]; then
  if [[ $tape_filter == *.tape ]]; then
    tape_filter_file="$tape_filter"
  else
    tape_filter_file="${tape_filter}.tape"
  fi
else
  tape_filter_file=""
fi

if ! command -v vhs >/dev/null 2>&1; then
  echo "Error: vhs command not found. Please install VHS before running this script." >&2
  exit 1
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"

found_any=false

find "$repo_root" -type f -name '*.tape' -print0 | while IFS= read -r -d '' tape_file; do
  tape_name=$(basename "$tape_file")

  if [[ -n $tape_filter_file && $tape_name != "$tape_filter_file" ]]; then
    continue
  fi

  found_any=true

  tape_dir=$(dirname "$tape_file")
  gif_name="${tape_name%.tape}.gif"

  pushd "$tape_dir" >/dev/null

  if [[ $force == false && -f "$gif_name" ]]; then
    echo "Skipping $tape_file (existing $gif_name; use --force to rebuild)"
    popd >/dev/null
    continue
  fi

  # run VHS inside the tape directory so assets resolve relative to the script
  vhs "$tape_name"
  popd >/dev/null
done

if [[ -n $tape_filter_file && $found_any == false ]]; then
  echo "Error: no tape named '$tape_filter_file' was found." >&2
  exit 1
fi
