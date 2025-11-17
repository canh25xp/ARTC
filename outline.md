# The Art of Command Line

Master the way of CLI to level-up your workflow

## What ?

What is CLI ?

- GUI: `git-gui`
- CLI: `git`
- TUI `lazygit`

## Why ?

Why Bother Learning Command Line?

- CLI give you full access to the application.
  Many GUI application build on top of it's CLI counterpart: `p4` and `p4v`, `git` and `git-gui`
  With GUI, sometime you just don't have enough control over it.
- Sometime CLI is all you have: remote ssh, cloud access, container connect,...
- Some applications just don't have a GUI.
- Scripting and Automation
- Fast and Lightweight

### Some personal experience

I cannot forget the day that my TL ask everyone in my team to apply a diff patch file manually.
Mind you, the patch was contains like 100 changed files with over thousand lines of code.
To be fair, we only use `p4` as the version control system, so it is understandable that the patch file meant to be apply with `git`.

- git patch

```bash
git apply --ignore-space-change --ignore-whitespace --whitespace=nowarn --allow-empty f1968cb.diff
```

## Which ?

Which command should you learn ?

### The Basic

According to [Wikipedia](https://en.wikipedia.org/wiki/List_of_POSIX_commands), there's a bout **155** standard UNIX commands.

But to get started, these are the **15** commands that I think you should get familiar with.

`cd`, `pwd`, `ls`, `cat`, `file`, `less`, `touch`, `cp`, `mv`, `mkdir`, `rm`, `find`, `man`, `alias`, `exit`

### The Intermediate

- `ssh`
- `curl`
- `git`
- `p4`

### The Advance

Some of my daily commands

- `chezmoi`
- `nvim`
- `tmux`
- `zoxide`
- `fzf`
- `http`
- `lazygit`
- `bat`
- `rg`
- `fd`
- `btm`
- `eza`
- `gdu`
- `gh`
- `jq`
- `starship`
- `tldr`

### Some handy commands

- `ffmpeg`
- `yt-dlp`
- `spotdl`

## How ?

- How to actually learn CLI and get good at it ?
- Some good resources to learn CLI.

### Try understand the meaning and intention behind the command's name.

For example, the `grep`

`g/re/p`: Globally search for a Regular Expression and Print

```bash
grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" *.md
```

### Use `man` and `tldr`

These are like the Linux Bibles

### Don't copy-paste blindly

When you're learning CLI, DO NOT copy-paste random script from Reddit.
That's basically playing Russian roulette with your files, or worse, whole file system.

I've once losing my whole git branch for my project by running `git revert` blindly.
Although later I learnt that you can actually revert the `git revert` command itself.
