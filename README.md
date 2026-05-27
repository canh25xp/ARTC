# The Art of Command Line

![slide](./assets/slide.png)

## Clone

```bash
git clone https://github.com/canh25xp/ARTC.git
```

## Convert slide

```bash
npm install # Run once
npx marp slide.md
xdg-open slide.html
explorer.exe slide.html # for WSL
```

## Watch and Preview

```bash
npx marp slide.md --preview --watch
```

## Server mode

```bash
npx marp --server .
xdg-open http://localhost:8080/slide.md

# Launch in background
# nohup npx marp --server . &
```

## GitHub Pages

Pushes to `main` build `slide.md` with Marp and publish the deck to GitHub Pages.

- Deck: https://canh25xp.github.io/ARTC/slide.html
- Root (same deck): https://canh25xp.github.io/ARTC/

Enable Pages once per repository: **Settings → Pages → Build and deployment → Source: GitHub Actions**.

The workflow lives in [.github/workflows/pages.yml](.github/workflows/pages.yml).

## Troubleshoot

WSL convert to pdf failed

```
Error: spawn cmd.exe ENOENT
    at ChildProcess._handle.onexit (node:internal/child_process:285:19)
    at onErrorNT (node:internal/child_process:483:16)
    at process.processTicksAndRejections (node:internal/process/task_queues:90:21) {
  errno: -2,
  code: 'ENOENT',
  syscall: 'spawn cmd.exe',
  path: 'cmd.exe',
  spawnargs: [ '/c', 'SET', 'TMP' ],
  cmd: 'cmd.exe /c SET TMP',
  stdout: '',
  stderr: ''
}
```

Solution: ensure `cmd.exe` and `explorer.exe` is in the `PATH` environment

```bash
export PATH="$PATH:/mnt/c/Windows/system32:/mnt/c/Windows"
```
