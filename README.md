mcserver:alpine
這個專案提供了一個輕量的 Minecraft 容器。
快速開始
1. 下載專案
你可以透過 git 複製儲存庫，或是直接下載壓縮檔：
git clone https://github.com/syuankai/mcserver-alpine.git


2. 編譯映像檔
進入資料夾並編譯 Docker Image：
cd mcserver-alpine && docker build -t mcserver:alpine .


注意：如果你的系統尚未安裝 Docker，請參考 Docker 官方安裝指南。
3. 執行容器
編譯完成後，執行以下指令即可啟動伺服器：
sudo docker run -d -p 25565:25565 --name mcserver mcserver:alpine


⚠️ 注意事項
⛔ 小白勿入 ⛔
本專案主要面向熟悉 Docker 與 Linux 操作的使用者。如有任何問題，歡迎至儲存庫提交 Issues。
支援的環境變數
你可以透過設定以下環境變數來自訂容器行為：
變數
說明
PORT
設定伺服器監聽端口（若修改此值，執行 docker run 時需同步更改 -p 映射參數）
minecraft_v
指定 Minecraft 伺服器核心的 .jar 直連下載網址
openjdk_v
指定該版本 Minecraft 所需的 OpenJDK 版本

