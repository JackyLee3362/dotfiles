# 启动脚本
# syncthing 开机启动
# $env:SYNCTHING
Start-Process "$env:SYNCTHING\syncthing.exe" -ArgumentList "--no-console","--no-browser" -WindowStyle Hidden

# 停止脚本 stop_st.ps1（优雅版）