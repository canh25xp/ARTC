# Command Line Cheat Sheet

## Essential Commands for Daily Use

<!-- TODO : Throw some shii in here -->

## Shell shortcut keys

> [!NOTE]
> These shortcuts assuming you're using the **emacs** key binding mode.
> In `bash`, emacs mode is the default: `set -o emacs`
> In `pwsh`, emacs mode is **NOT** the default, enable it with `Set-PsReadLineOption -EditMode Emacs`

### Moving

| Keys        | Actions                                                      |
| ----------- | ------------------------------------------------------------ |
| `Ctrl + a`  | Go to the begin of the line (Appending)                      |
| `Ctrl + e`  | Go to the end of the line                                    |
| `Alt + b`   | Backward one word                                            |
| `Alt + f`   | Forward one word                                             |
| `Ctrl + f`  | Forward one character                                        |
| `Ctrl + b`  | Backward one character                                       |
| `Ctrl + xx` | Toggle between the start of line and current cursor position |

### Editing

| Keys                | Actions                                                                           |
| ------------------- | --------------------------------------------------------------------------------- |
| `Ctrl + u`          | Cut the line before the cursor position                                           |
| `Alt + Del`         | Delete the Word before the cursor                                                 |
| `Alt + d`           | Delete the Word after the cursor                                                  |
| `Ctrl + d`          | Delete character under the cursor                                                 |
| `Ctrl + h`          | Delete character before the cursor (backspace)                                    |
| `Ctrl + w`          | Cut the Word before the cursor to the clipboard                                   |
| `Ctrl + k`          | Cut the Line after the cursor to the clipboard                                    |
| `Alt + t`           | Swap current word with previous                                                   |
| `Ctrl + t`          | Swap the last two characters before the cursor (typo)                             |
| `Esc + t`           | Swap the last two words before the cursor.                                        |
| `Ctrl + y`          | Paste the last thing to be cut (yank)                                             |
| `Alt + u`           | UPPER capitalize every character from the cursor to the end of the current word.  |
| `Alt + l`           | Lower the case of every character from the cursor to the end of the current word. |
| `Alt + c`           | Capitalize the character under the cursor and move to the end of the word.        |
| `Alt + r`           | Cancel the changes and put back the line as it was in the history (revert)        |
| `Сtrl + _` [^1]     | Undo                                                                              |
| `Сtrl + x Ctrl + e` | Edit current command with $EDITOR                                                 |

[^1]: Some terminal emulator don't have `Ctrl + _`, use `Ctrl + /` instead

### History

| Keys       | Actions                                        |
| ---------- | ---------------------------------------------- |
| `Ctrl + n` | Next command in history                        |
| `Ctrl + p` | Previous command in history                    |
| `Ctrl + s` | Forward search history.                        |
| `Ctrl + r` | Reverse search history                         |
| `Ctrl + o` | Execute the command found via Ctrl+r or Ctrl+s |
| `Ctrl + g` | Escape from history searching mode             |
| `Alt + .`  | Use the last word of the previous command      |

> [!NOTE]
> In `bash` You can always use `bind -p` to get a list of key bindings.
> In `pwsh`, use `Get-PSReadLineKeyHandler -Bound`.
