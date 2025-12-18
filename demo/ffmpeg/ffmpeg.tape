# Basic ffmpeg demonstration recording for VHS
Output ffmpeg.gif

Require ffmpeg

Set Theme "Dracula"
Set Shell "bash"
Set FontSize 22
Set Width 1920
Set Height 1080
Set Padding 5
Set TypingSpeed 30ms

Sleep 500ms

Type "cd ~/projects/ARTC/demo/ffmpeg" Sleep 400ms Enter

Type "ls -1" Sleep 400ms Enter

Type "ffprobe -v quiet -show_entries format=duration -of default=noprint_wrappers=1 sample.mp4" Sleep 400ms Enter
Sleep 2s

Type "ffmpeg -v quiet -i sample.mp4 -t 2 -c copy clip.mp4" Sleep 400ms Enter
Sleep 500ms

Type "ls -1" Sleep 400ms Enter

Type "ffprobe -v quiet -show_entries format=duration -of default=noprint_wrappers=1 clip.mp4" Sleep 400ms Enter
Sleep 2s

Type 'ffmpeg -v quiet -i sample.mp4 -vf "scale=320:-1" sample_320.mp4' Sleep 400ms Enter
Sleep 500ms

Type "ls -1lh" Sleep 400ms Enter
Sleep 2s

Type "ffmpeg -v quiet -i sample.mp4 -vn sample.mp3" Sleep 400ms Enter
Sleep 500ms

Type "ls -1lh" Sleep 400ms Enter
Sleep 2s

Type "mkdir -p frames" Sleep 400ms Enter
Sleep 500ms

Type 'ffmpeg -v quiet -i sample.mp4 -vf "fps=2,scale=320:-1" frames/frame_%02d.png' Sleep 400ms Enter
Sleep 500ms

Type "ls -1" Sleep 400ms Enter
Sleep 2s

Type "ls frames" Sleep 400ms Enter
Sleep 2s

Sleep 5s
