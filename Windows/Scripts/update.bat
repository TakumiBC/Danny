@echo off
@chcp 65001
echo "欢迎使用Annie视频解析软件更新程序！"

:choice
set /P c=请问您确定要更新Annie视频解析软件吗？[y/n]
>nul 2>nulif /I "%c%" EQU "y" goto :update
>nul 2>nulif /I "%c%" EQU "n" goto :exit
>nul 2>nulgoto :choice



:update

echo "更新开始："
echo "第一步、卸载内核"
echo "正在卸载内核中..."
cd \.
cd AnnieDownloader
del yt-dlp
del lux
rmdir yt-dlp
echo "第一步、更新内核"
echo "正在更新内核中..."
cd lux
curl -L --max-redirs -1  --output lux.exe https://ghproxy.com/https://github.com/thomaswcy/Annie-Packages/releases/latest/download/lux.exe
cd ../
curl -L --max-redirs -1  --output yt-dlp.tar.gz https://ghproxy.com/https://github.com/thomaswcy/Annie-Packages/releases/latest/download/yt-dlp.tar.gz
tar -zxvf yt-dlp.tar.gz
del yt-dlp.tar.gz
cd ../
echo "程序更新完成"
echo "更新程序已经自动退出"
exit

:exit

echo "更新程序已经自动退出"
exit