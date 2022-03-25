# Annie
简体中文 | [English](https://github.com/thomaswcy/Annie/blob/main/README_EN.md)

## 介绍
由于Windows电脑用户需要大量配置才能获得MacOS平台上Downie视频解析软件类似的体验，Annie软件开始开发。

## 如何下载和配置Annie

### 1. 安装 [Python](https://www.python.org/downloads/windows/) 

1) 安装方法很简单，安装到默认路径 ，并一路“确认”到底就可以了。

2) 记得在安装向导中勾选`Add Python x.x to PATH`

### 2. 安装 [Annie](https://github.com/thomaswcy/Annie/)

1) 下载[install.bat](https://github.com/thomaswcy/Annie/releases/latest/download/install.bat)

2) 双击 `install.bat`，等待 `cmd` 窗口中出现 `[已退出进程，代码为 9009]` 或类似字样，即可关闭cmd窗口，进行下一步操作

### 3. 连接浏览器

1）安装浏览器拓展 Openwith。（ [Firefox](https://addons.mozilla.org/zh-CN/firefox/addon/open-with/) / [Chrome](https://chrome.google.com/webstore/detail/open-with/cogjlncmljjnjpbgppagklanlcbchlno) / / [新版Edge](https://chrome.google.com/webstore/detail/open-with/cogjlncmljjnjpbgppagklanlcbchlno)）

2）在键盘上按 `Windows 键 + R 键` ，输入 cmd 回车，在弹出的窗口里查看当前目录，比如我的是 C:\Users\thomaswcy。

3）打开 OpenWith 的「扩展设置页面」，点击下载 open_with_windows.py，并把它移到 步骤 2 获得的目录中去。

4）在 cmd 命令提示符里输入下面这行代码：
```
open_with_windows.py install
```

5）回到浏览器，点击「测试安装」
 
6) 在步骤 2 获得的目录后面，加上\Downloads，比如我的就是 C:\Users\thomaswcy\Downloads，保存好

7) 先点击「新增浏览器」一次，在「名称」和「指令」栏分别输入`国内视频下载`和`"C:\AnnieDownloader\lux\lux.exe" -o "替换这里"`，将 替换这里 替换为第6步获取到的路径，点击「添加」。

8) 再点击「新增浏览器」一次，在「名称」和「指令」栏分别输入`国外视频下载`和`"C:\AnnieDownloader\yt-dlp\yt-dlp.exe" --output "替换这里"`，将 替换这里 替换为第6步获取到的路径，点击「添加」。

至此，您可以像使用 Mac 平台上的 Downie 一样地下载视频了。

## 使用方法
在 下载和配置Annie 后，在需要下载视频的网页右键，调出右键菜单，选择 国内视频下载 或者 国外视频下载 即可。
