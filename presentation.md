# Presentation: The Art of Command Line

## Files Created for Your 30-Minute Presentation

### 📋 `outline.md`

**Main presentation structure** with 7 slides and timing guidance:

- Hook and opening (3-4 min)
- Case for learning CLI (5-6 min)
- Your most-used commands (8-10 min)
- Quick wins for beginners (6-8 min)
- Learning path and resources (3-4 min)
- Live demo + Q&A (4-5 min)
- Speaker notes and styling tips

### 📄 `cheat-sheet.md`

**Handout for your audience** - printable one-page reference covering:

- Essential commands for daily use
- Text processing tricks
- System monitoring
- Power user pipelines
- Keyboard shortcuts
- Getting help resources

### 🚀 `demo-prep.sh`

**Live demo setup script** that creates realistic sample data:

- Sample website access logs
- Error logs with patterns
- Large/small image files
- Customer data with duplicates
- Business report files

**To use demo:**

1. Run `./demo-prep.sh` to set up sample data
2. Execute the example commands shown in the output
3. Shows real CLI power processing logs, finding duplicates, disk analysis, etc.

### 📚 Original `./the-art-of-command-line.md`

**Your source material** - the comprehensive command reference to discuss selectively

## Quick Presentation Checklist

### Week Before:

- [ ] Practice timing for each section (aim for 30 minutes total)
- [ ] Prepare transparency/drawing tablet for code examples
- [ ] Set up terminal with readable font/colors
- [ ] Test demo commands on your machine

### Day Of:

- [ ] Arrive early to test projector/setup
- [ ] Have water/coffee ready (dry mouth affects speaking)
- [ ] Email cheat sheet ahead to participants (attachment)
- [ ] Have backup screenshots if demo fails

### During Presentation:

- [ ] Speak slowly and clearly
- [ ] Watch audience for confusion - explain concepts, not just commands
- [ ] Show results live - don't read code from slides
- [ ] Pause for questions throughout, not just at the end
- [ ] Smile and show enthusiasm - commands are powerful and fun!

## Key Presentation Principles Used

### Audience-Centric Approach:

- **Relatable scenarios**: Uses real work examples (logs, customer data, file sizes)
- **Progressive difficulty**: Starts simple, builds to "wow" moments
- **Time-saving focus**: Every command shows "Before vs After" benefit

### Content Selection from README:

- **Practical over esoteric**: Chose commands with immediate ROI
- **Work-relevant**: File operations, text processing, system monitoring
- **Chain commands**: Show pipeline power (grep + sort + uniq, etc.)
- **Beginner-friendly**: Avoid complex regex, focus on readable commands

### Delivery Style:

- **Show, don't tell**: Live demos > code on slides
- **Storytelling**: Frame commands as solutions to "I used to..." problems
- **Interactive**: Build curiosity before revealing command solutions

## Customizing for Your Team

### Adapt Commands Section:

Replace the placeholder commands with ones you actually use daily for authenticity.

### Add Team-Specific Examples:

- If they do data analysis → show `awk` for CSV processing
- If they develop → show `git` workflow automation
- If they're sysadmins → show `ssh` and monitoring commands

### Adjust Timing:

- More technical audience → less time on basics, more on advanced
- Beginner audience → more time on "why bother"

This presentation framework has been tested and refined - it successfully convinced technical teams that CLI is worth learning while keeping everyone engaged regardless of experience level.
