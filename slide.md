---
marp: true
title: ARTC
theme: dracula
paginate: true
size: 16:9
---

# The Art of Command Line

![bg right](./assets/intro.gif)

Master the way of CLI to level-up your workflow

---

## What is CLI ?

- **CLI**: Command Line Interface `git`, `p4`, `odin4`
- **GUI**: Graphical User Interface `git-gui`, `p4v`, `odin4v`
- **TUI**: Text User Interface `lazygit`, `vim` <!-- Sometimes known as Terminal User Interface-->

---

## Why Bother Learning CLI ?

- Full access to applications
- Many GUIs are built on CLI counterparts:
  `p4` and `p4v`, `git` and `git-gui`
- Sometimes CLI is all you have:
  **Remote SSH** , **Cloud access** , **Container connections**
- Some applications only have CLI
- Scripting and Automation
- Fast and Lightweight

---

## Why Bother Learning CLI ?

<!--
I cannot forget the day that my TL ask everyone in my team to apply a diff patch file manually.
Mind you, the patch was contains like 100 changed files with over thousand lines of code.
To be fair, we only use `p4` as the version control system, so it is understandable that the patch file meant to be apply with `git`.
-->

Applying a large patch:

```bash
git apply --ignore-space-change --ignore-whitespace --whitespace=nowarn --allow-empty f1968cb.diff
```

---

## Terminal vs Shell

If your **keyboard** is a **pen** then the **terminal** is your **notebook**, and **shell** is the **page**.

A **terminal** might allows you to run many different **shell**, run many **shell** at the same time.

- **Terminal**: `wt` (Windows Terminal), `console`, `alacritty`, `wezterm`, `kitty`, ...
- **Shell**: `pwsh`, `cmd`, `bash`, `zsh`, `fish`, `nushell`, ...

---

## `pwsh` vs `bash`

<style scoped>
table {
    width: 100%;
    table-layout: fixed;
}
</style>

| `pwsh`                                                      | `bash`                              |
| ----------------------------------------------------------- | ----------------------------------- |
| Cross-platform                                              | Unix only                           |
| Output is **.NET objects**                                  | Output is **text streams**          |
| Has Verb-Noun cmdlets (`Set-Location`, `Get-Location`, ...) | Has shell builtin (`cd`, `pwd`,...) |

- `powershell.exe`: the legacy powershell (stop at version _5.1_)
- `pwsh.exe`: newer version of powershell

---

## Structure of a command

<style scoped>
section {
    font-size: 32px;
}
</style>

<!--
Most of the times, a command look something like this
-->

```sh
command --flag value first second third
#                   positional arguments
```

<!-- prettier-ignore -->
* **command** could be one of these type:
  * An **_executable_**:
    * A **_binary_**: `ls`, `grep`, `cat`, `cp`, `mv`, `git`, `p4`, `curl`,... `*.exe`
    * A **_script_**: `*.sh`, `*.ps1`, `*.bat`, `*.vbs`
  * An **_alias_**: `ll`, `la`, `egrep`, `fgrep`
  * A **_shell functions_**: `function tf() { echo TheFork }`
  * A **_shell builtin_** (`bash` specific): `cd`, `pwd`, `alias`, `history` ,`type`
  * A **_cmdlet_** (`pwsh` specific): `Set-Location`, `Get-Content`, `Out-Host`

---

## Structure of a command

<!-- Some command comes with a variety of **subcommand** -->

```sh
command subcommand --flag value first second third
```

**subcommand** always comes right after the command itself.

```sh
git commit --message "Some changes"
```

Some applications has many nested **subcommand**

```sh
gh repo clone canh25xp/ARTC
gh repo fork canh25xp/ARTC
```

---

## Structure of a command

### Some special cases

To reduce ambiguity between the value of a flag and a positional arguments, some applications use the **key=value** pair

```sh
command --flag=value first second third
```

<!-- Here the `--flag` arguments is shorten to `-f` -->

---

## Structure of a command

### Some special cases

Shorten flags

```sh
command -f value first second third
```

Most of the time, shorten flags come after a single dash `-`,
and long flag come after a double dash `--`.

<!-- Here the `--flag` arguments is shorten to `-f` -->

---

## Structure of a command

### Some special cases

Boolean flags (or switches)

```sh
command --bool first second third
command -b first second third
```

Shorten boolean flags sometimes grouped together

```sh
command -a -b -c first second third
command -abc first second third # Same as above
```

---

## Structure of a command

### Some special cases

Sometimes, cli applications allow flag and value sticks together

```sh
command -f value first second third
command -fvalue first second third
```

For example:

```sh
7z x archive.zip -oOutput
```

---

## Which Commands Should You Learn?

There's about **155** standard UNIX commands ([Wikipedia](https://en.wikipedia.org/wiki/List_of_POSIX_commands))

![w:900 center](./assets/POSIX-commands.png)

---

## Which Commands Should You Learn?

### Basic commands

<!--
But to get started, these are the 15 commands that I think you should get familiar with.
-->

File management: `touch`, `mkdir`, `cat`, `cp`, `mv`, `rm`, `file`, `grep`

Navigation: `cd`, `pwd`, `ls`

Process management: `ps`, `kill`

Shell manipulation: `exit`, `clear`

---

## Which Commands Should You Learn?

### Intermediate commands

Data manipulating: `sort`, `uniq`, `cut`, `paste`, `join`, `awk`, `sed`.
System monitoring: `top`, `htop`
Data transferring: `curl`, `wget`
Networking: `netstat`, `ifconfig`, `ipconfig`
Disk management: `du`, `df`

---

## Which Commands Should You Learn?

### Package managers

<!--
Avoid the pain of manually download and install every tools.
Learn to use a package manager.
-->

Learn to **search**, **list**, **install** and **uninstall** packages.

- Windows: `winget`, `scoop`, `choco`
- Ubuntu/Debian: `apt`, `snap`, `flatpak`
- Language specific: `cargo`, `go`, `npm`, `pip`

---

## Which Commands Should You Learn?

<!-- Most of these has already pre-installed in most OS distro. -->

- [`ssh`](https://www.openssh.com/), [`tmux`](https://github.com/tmux/tmux), [`nvim`](https://github.com/neovim/neovim), [`git`](https://git-scm.com/)
- [`chezmoi`](https://github.com/twpayne/chezmoi), [`starship`](https://github.com/starship/starship)
- [`gh`](https://github.com/cli/cli), [`fzf`](https://github.com/junegunn/fzf), [`lazygit`](https://github.com/jesseduffield/lazygit), [`yazi`](https://github.com/sxyazi/yazi)
- [`bat`](https://github.com/sharkdp/bat), [`eza`](https://github.com/eza-community/eza), [`zoxide`](https://github.com/ajeetdsouza/zoxide), [`rsync`](https://rsync.samba.org/), [`rip`](https://github.com/MilesCranmer/rip2), [`rg`](https://github.com/BurntSushi/ripgrep), [`fd`](https://github.com/sharkdp/fd), [`sd`](https://github.com/chmln/sd), [`btm`](https://github.com/sharkdp/bottom), [`curlie`](https://github.com/rs/curlie), [`http`](https://httpie.io/), [`delta`](https://github.com/dandavison/delta), [`dust`](https://github.com/bootandy/dust), [`gdu`](https://github.com/dundee/gdu), [`duf`](https://github.com/muesli/duf), [`procs`](https://github.com/dalance/procs)
- [`ffmpeg`](https://ffmpeg.org/), [`pandoc`](https://pandoc.org/), [`jq`](https://stedolan.github.io/jq/)
- [`yt-dlp`](https://github.com/yt-dlp/yt-dlp), [`instaloader`](https://instaloader.github.io/), [`spotdl`](https://github.com/spotDL/spotify-downloader)

---

## Which Commands Should You Learn?

These commands are meant to be a Drop-in Replacement for their successor

<!-- TODO: This list is too long, decrease the font size, or something idk -->
- **`cat` → `bat`**: Syntax highlighting, paging, git integration, line numbers.
- **`ls` → `eza`**: Better default formatting, icons, git status, tree view.
- **`cd` → `zoxide`**: Smarter directory jumping based on usage frequency.
- **`cp` → `rsync`**: Incremental copying, resume support, progress, remote sync.
- **`rm` → `rip`**: Safer deletes with trash support and recovery.
- **`grep` → `rg`**: Much faster search, respects `.gitignore`, better defaults.
- **`find` → `fd`**: Simpler syntax, faster search, sensible defaults.
- **`sed` → `sd`**: Clearer find-and-replace syntax, safer by default.
- **`top` → `btm`**: Modern TUI, mouse support, multiple views, better visuals.
- **`curl` → `curlie`, `http`**: Human-friendly syntax, readable output, JSON highlighting.
- **`diff` → `delta`**: Syntax highlighting, side-by-side diff, git-aware output.
- **`du` → `dust`, `gdu`**: Faster disk usage scanning, clearer summaries, better visuals.
- **`df` → `duf`**: Clean table layout, human-readable sizes, filesystem filtering.
- **`ps` → `procs`**: Colored output, tree view, more readable process info.

---

## Which Commands Should You Learn?

[`ffmpeg`](https://github.com/FFmpeg/FFmpeg): A collection of libraries and tools to process multimedia: images, audio, video, subtitles, ...

- `ffmpeg`: manipulate, convert and stream multimedia content.
- `ffplay`: minimal multimedia player.
- `ffprobe`: analysis and inspect multimedia content.

---

![bg](demo/ffmpeg/ffmpeg.gif)

---

## How to Learn CLI?

### Learn how to get help

Use the cli builtin help page.

- `git --help`
- `odin4 -h`
- `p4 help`
- `cmd /?` (windows only)

---

## How to Learn CLI?

### Learn how to get help

Use system's Manual

<!-- These are like the OS Bibles -->

- `man cat` (bash)
- `help cat` (pwsh)

---

## How to Learn CLI?

### Learn how to get help

Use cheatsheet

- `tldr tar`
- `curl cht.sh/tar`

---

## How to Learn CLI?

### Learn how to edit commands

- Tab completions: `Tab`, `Shift+Tab`, `Ctrl+space`
- History Search: `Ctrl+n`, `Ctrl+p`
- Line editing: `Ctrl+w`, `Ctrl+a`, `Ctrl+e`, `Ctrl+u`, `Ctrl+k`
- Visual Edit: `Ctrl+x Ctrl+e`

---

## How to Learn CLI?

### Learn how to config commands

Highest &rarr; Lowest

1. Command-line arguments
2. Environment variables: `$GIT_PAGER`, `GIT_EDITOR`
3. Project config files: `.git/config`
4. User config files: `~/.gitconfig`
5. System config files: `/etc/gitconfig`

---

## How to Learn CLI?

### Tips and tricks

Understand Command Names

For example, `grep`:

- `g/re/p`: Globally search for a Regular Expression and Print

```bash
grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" *.md
```

---

## How to Learn CLI?

### Tips and tricks

Don't Copy-Paste Blindly

<!--
When you're learning CLI, DO NOT copy-paste random script from Reddit.
That's basically playing Russian roulette with your files, or worse, whole file system.

I've once losing my whole git branch for my project by running `git revert` blindly.
Although later I learnt that you can actually revert the `git revert` command itself.
-->

- Avoid running random scripts from the internet
- Understand what commands do before executing them

---

## How to Learn CLI?

### Tips and tricks

Don't hesitate to ask!

Ask me, Ask Stack Overflow, Ask Github Discussion, Ask Chat GPT,...

---

## References

- [The Art of Command Line](https://github.com/jlevy/the-art-of-command-line)
- [Explainshell](http://explainshell.com/)
- [Bash-Cheat-Sheet](https://github.com/RehanSaeed/Bash-Cheat-Sheet)

---

## Thank You !

Feel free to have leave any question
