# The Art of Command Line - Presentation Structure (30 minutes)

## Slide 1: Opening Hook (3-4 minutes)

**Title: Why Command Line Matters**

**Hook Story:**
"What takes 15 clicks and 2 minutes in a file explorer can be done in 5 seconds with one command"

**Key Messages:**

- CLI intimidates but is learnable
- Once mastered, it's like having superpowers
- Today: Make the case AND show you how to start

---

## Slide 2: The Case for Learning CLI (5-6 minutes)

**Title: Why Bother Learning Command Line?**

### Power & Efficiency

- **Automation**: "I used to manually rename 50+ files every week..."
- **Batch Operations**: Process hundreds of files instantly
- **Remote Work**: Essential for servers, deployments, and cloud environments

### Professional Value

- **Industry Standard**: Expected skill for developers, DevOps, data scientists
- **Career Growth**: Opens doors to new roles and higher-paying jobs
- **Essential Skills**: Version control (git), deployment, debugging all rely on CLI

### Flexibility

- **Customization**: Tailor your workflow exactly how you want
- **Composability**: Combine simple commands into powerful pipelines

---

## Slide 3: My Most-Used Commands (8-10 minutes)

**Title: Commands I Use Every Day**

### 1. Navigation & Files (`find`, `cd` shortcuts, `ls` variants)

**Command:** `find . -name "*.log" -mtime -7`
**Use Case:** "Finding customer support log files from the past week for troubleshooting"
**Time Savings:** "Instead of searching through 500+ files in GUI, I get exactly what I need instantly"

### 2. Text Processing (`grep`, `sort`, `uniq`)

**Command:** `grep "ERROR" *.log | sort | uniq -c | sort -nr`
**Use Case:** "Analyzing error patterns across multiple log files"
**Time Savings:** "Used to take 20 minutes in Excel, now takes 10 seconds"

### 3. File Operations (`xargs`, `mv` with wildcards)

**Command:** `find . -name "*.jpg" -size +5M | xargs ls -lh`
**Use Case:** "Finding large image files that are slowing down our website"
**Time Savings:** "Can identify and move/optimize 100+ files instantly instead of checking each manually"

### 4. System Monitoring (`ps`, `df`, `du`)

**Command:** `du -h --max-depth=1 | sort -hr`
**Use Case:** "Quickly identifying which directories are taking up most disk space"
**Time Savings:** "Used to take 5+ minutes poking around folders"

### 5. Remote Management (`ssh`, `scp` with keys)

**Command:** `scp -r local-folder user@server:/var/www/site/`
**Use Case:** "Deploying website updates to staging/production servers"
**Time Savings:** "Reliable automated deployment instead of error-prone manual FTP uploads"

---

## Slide 4: Quick Wins - Commands You Can Use Tomorrow (6-8 minutes)

**Title: Get Started Today - Easy Wins**

### File Searching Made Easy

`find . -iname "*report*" -type f` - Find all files containing "report" in the name
`grep -r "TODO" .` - Search for all TODO comments across your codebase

### Text Processing Superpowers

`sort names.txt | uniq -d` - Find duplicate names in a list
`wc -l *.txt` - Count lines in text files to see file sizes

### Productivity Boosters

`history | tail -20` - See your recent commands
`cd -` - Switch back to previous directory (like ctrl-z for directories)
`mkdir -p project/{src,docs,tests}` - Create entire folder structure in one command

### The Pipe Character Magic (`|`)

`cat access.log | grep "mobile" | wc -l` - Count mobile visitors
`ps aux | grep python | head -5` - Find running Python processes

---

## Slide 5: Learning Path & Resources (3-4 minutes)

**Title: How to Learn Command Line**

### Get Started (Week 1)

- Learn 5 commands that solve your immediate problems
- Use them every day for a week (muscle memory)
- Don't memorize flags - know where to look them up

### Study Method

- `man command` - Built-in manual pages
- explainshell.com - Interactive command breakdowns
- Practice safely - Your personal `/home` folder is safe to explore

### Recommended Resources

- **The README**: Our department's go-to command reference
- **Terminal Choice**: iTerm2 (Mac), Windows Terminal (Windows), or system default
- **Help Communities**: Stack Overflow, Reddit r/commandline

---

## Slide 6: Live Demo & Q&A (4-5 minutes)

**Title: Let's See It In Action**

**Demo: Analyze Our Website Logs** (2 minutes)

```
# Simulate processing real access logs
# Challenge: How many unique IP addresses hit our contact page?
grep "/contact" access.log | awk '{print $1}' | sort | uniq | wc -l

# Challenge: What are our top 5 busiest hours?
grep " 200 " access.log | cut -d: -f2 | sort | uniq -c | sort -nr | head -5
```

**Key Takeaway:** These commands process thousands of log entries in seconds vs. hours with traditional tools.

---

## Slide 7: Conclusion (1 minute)

**Title: Start Your CLI Journey**

Remember: **CLI isn't about typing commands - it's about getting more done, faster, and more easily.**

Your journey starts with solving one problem today.

**Bonus:** I'll email a "Command Line Cheat Sheet" to everyone this afternoon.

**Q&A:** What's one task you do repeatedly that might be CLI-solvable?

---

## Speaker Notes & Timing Guidelines

### Timing Breakdown:

- Intro: 4 min
- Case for CLI: 5 min
- My Commands: 8 min
- Quick Wins: 7 min
- Learning Path: 3 min
- Demo: 2 min
- Q&A/Conclusion: 1 min

### Presentation Style Tips:

- **Speak to the Audience Level**: Assume zero prior knowledge but intelligence
- **Show, Don't Tell**: Use live demos, NOT slides of code
- **Relatable Examples**: Use real scenarios your team faces
- **Energy**: Smile, use voices, variations - don't drone read slides
- **Interaction**: Pause for nods, ask "who's tried something like this?"
- **Preparation Time**: 2-3 hours to practice (focus on timing)
- **Backup Plan**: If demo fails, have static screenshots ready

### Visual Design Guidelines:

- **Simple Slides**: Big text, minimal bullet points
- **Command Examples**: White background, black text, syntax highlighting
- **Per Command**: Screenshot "Before" vs "After"
- **Font Choice**: Sans-serif like Arial or Helvetica (readable)
- **Colors**: Blue text on white background (professional, readable)

### Post-Presentation Materials:

- Command cheat sheet PDF
- README.md chapters relevant to their work
- Your contact info for questions
