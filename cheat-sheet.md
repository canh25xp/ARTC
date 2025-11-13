# Command Line Cheat Sheet

## Essential Commands for Daily Use

### File Navigation & Info

```bash
pwd                     # Show current directory
ls -la                  # List all files with details
cd ~/Documents          # Go to Documents folder
cd -                    # Go back to previous directory
find . -name "*.txt"    # Find all text files
```

### File Operations

```bash
cp file.txt copy.txt               # Copy file
mv oldname.txt newname.txt         # Rename/move file
rm file.txt                       # Delete file (careful!)
mkdir new-folder                   # Create folder
touch new-file.txt                 # Create empty file
```

### Text Processing

```bash
grep "search" file.txt         # Find text in file
grep -r "search" .             # Find in all files
sort names.txt                 # Sort lines alphabetically
uniq -c names.txt              # Count occurrences of each line
wc -l file.txt                 # Count lines in file
```

### Viewing Files

```bash
cat file.txt                   # Show entire file
less file.txt                  # Page through file (press q to quit)
head -10 file.txt              # Show first 10 lines
tail -10 file.txt              # Show last 10 lines
```

### System Info (Mac/Linux)

```bash
df -h                   # Disk space usage
du -h --max-depth=1     # Directory sizes
ps aux | grep process   # Find running processes
history | tail -20      # Recent commands
```

### Remote & Network

```bash
ssh user@server.com               # Connect to remote server
scp file.txt user@server.com:~    # Copy file to server
ping google.com                   # Test connection
curl -s website.com               # Download website content
```

## Power User Tricks

### Pipes: Feed one command into another

```bash
# Count lines with "error" in all log files
grep "error" *.log | wc -l

# Find largest files in current directory
ls -lh | sort -k5 -hr | head -10

# Find processes using most memory
ps aux | sort -k4 -nr | head -5
```

### Multiple Files at Once (globbing)

```bash
# Rename all .html files to .bak
cp *.html *.bak        $(wait, doesn't work)

# Correct way: find and process each file
find . -name "*.html" -exec cp {} {}.bak \;
```

### Daily Productivity Commands

```bash
# Quick system overview
du -h --max-depth=1 | sort -hr

# Find all images larger than 5MB
find . -name "*.jpg" -size +5M

# Count files in each subdirectory
for d in */; do echo "$d: $(find "$d" -type f | wc -l)"; done
```

## Getting Help

```bash
man command            # Read manual page
command --help         # Brief help
explainshell.com       # Interactive command explanations
```

## Remember These Shortcuts

- `Ctrl+C` - Stop running command
- `Ctrl+D` - End input (or exit shell)
- `TAB` - Auto-complete commands/files
- `Ctrl+R` - Search command history
- `Ctrl+A` - Go to start of line
- `Ctrl+E` - Go to end of line
- `Ctrl+W` - Delete word backwards

**Practice Tip:** Start with 3 commands that solve your biggest daily problems. Use them for a week to build confidence.
