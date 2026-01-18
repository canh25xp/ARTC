# Repository Guidelines

## Project Structure & Module Organization

Source slide content lives in `slide.md`, with supporting Markdown references under `the-art-of-command-line`.
Animated terminal demos and inputs sit in `demo/**`, where each subfolder pairs `.tape` scripts with generated `.gif` assets.
Theme and styling assets are under `dracula/`, while reusable images, tapes, and helper scripts are stored in `assets/` and `scripts/`.

## Build, Test, and Development Commands

- `npm install`: Install Marp CLI and keep lockfile dependencies in sync.
- `npx marp slide.md`: Render the primary slide deck to HTML; add `--pdf` when export tooling is configured.
- `npx marp slide.md --preview --watch`: Live-reload the deck while editing.
- `scripts/maketape.sh [--force] [name]`: Regenerate GIFs from `.tape` files using VHS; scope to a single demo with `name`.
- `scripts/prepare.sh`: Download the sample media clip required by the `ffmpeg` demo.

## Coding Style & Naming Conventions

Slides and documentation use Markdown with Marp front-matter; keep headings sentence case and avoid long bullet lists.
Keep each slide brief, put longer text in Presenter notes with markdown comments.
Stick to soft-wraps at 100 characters and prefer fenced code blocks with language hints (e.g., ```bash).
Tape files follow VHS syntax—keep command prompts consistent with existing demos.
Shell scripts use `bash`, `set -euo pipefail`, and functions for reuse; format with two-space indentation and lowercase file names that describe the action (`maketape.sh`, `prepare.sh`).

## Testing Guidelines

After editing slides, run `npx marp slide.md --preview --watch` to verify layout and speaker notes.
For GIF updates, run `scripts/maketape.sh` and confirm regenerated assets under `assets/` or the relevant `demo/**` folder.
No automated unit tests exist; rely on manual inspection of the rendered deck and demo playback, and re-run the conversion commands on Linux and WSL when shell portability matters.

## Commit & Pull Request Guidelines

Commit messages should use short, imperative summaries (`Add new VHS demo`, `Fix slide theme`).
Group related slide, asset, and script changes together to keep the history meaningful.
Pull requests must describe user-facing changes, list any new commands or assets, and include before/after screenshots or GIFs when visuals changed.
Reference related issues, document manual verification steps (build, preview, tape regeneration), and flag any follow-up tasks that remain.
