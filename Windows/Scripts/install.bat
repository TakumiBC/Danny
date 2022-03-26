@echo off
@chcp 65001
echo "欢迎使用Annie视频解析软件安装程序！"

:choice
set /P c=请问您确定要下载Annie视频解析软件吗？[y/n]
>nul 2>nulif /I "%c%" EQU "y" goto :install
>nul 2>nulif /I "%c%" EQU "n" goto :exit
>nul 2>nulgoto :choice



:install

echo "安装开始："
echo "第一步、安装程序"
echo "正在安装程序中..."
cd \.
mkdir AnnieDownloader
cd AnnieDownloader
curl -L --max-redirs -1  --output update.bat https://ghproxy.com/https://github.com/thomaswcy/Annie/releases/latest/download/update.bat
mkdir ffmpeg
cd ffmpeg
curl -L --max-redirs -1  --output ffmpeg.exe https://ghproxy.com/https://github.com/thomaswcy/Annie-Packages/releases/download/ffmpeg/ffmpeg.exe
cd ../
mkdir lux
cd lux
curl -L --max-redirs -1  --output lux.exe https://ghproxy.com/https://github.com/thomaswcy/Annie-Packages/releases/latest/download/lux.exe
cd ../
curl -L --max-redirs -1  --output yt-dlp.tar.gz https://ghproxy.com/https://github.com/thomaswcy/Annie-Packages/releases/latest/download/yt-dlp.tar.gz
tar -zxvf yt-dlp.tar.gz
del yt-dlp.tar.gz
cd ../
echo "程序安装完成"
echo "安装程序已经自动退出"
exit

:exit

echo "安装程序已经自动退出"
exit