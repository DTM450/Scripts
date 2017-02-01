for %%a in (*.mp4) do ffmpeg -i "%%a" -map 0 -crf 0  -r 60 "%~dp0\%%~na(FPS fix).mp4"
pause
