Output POSIX-commands.gif

Require cowsay

Set Theme "Dracula"
Set Shell "bash"
Set FontSize 24
Set Width 1280
Set Height 600
Set Padding 5

Type "cd ~/projects/ARTC" Sleep 500ms  Enter

Type "cat assets/POSIX-commands.txt | awk '{print $1}' | cowthink -d -W80" Sleep 500ms  Enter

Screenshot POSIX-commands.png

Sleep 10s
