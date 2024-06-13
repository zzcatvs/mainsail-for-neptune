#!/bin/bash

# 执行卸载命令
echo "Starting uninstallation process..."
sudo sed -i 's/listen 81/listen 80/g' /etc/nginx/sites-available/fluidd
sudo rm -f /etc/nginx/sites-available/mainsail-for-neptune
sudo rm -f /etc/nginx/sites-enabled/mainsail-for-neptune
sudo rm -rf /home/mks/klipper_config/.theme
sudo rm -f /etc/nginx/sites-available/mainsail
sudo rm -rf /home/mks/klipper_config/.theme

# 检查上一个命令是否成功执行
if [ $? -eq 0 ]; then
    # 重启nginx服务
    sudo systemctl restart nginx
    echo "Uninstallation successful!"
else
    echo "Uninstallation failed, please check the error messages above."
    exit 1
fi

# 脚本结束
echo "Uninstallation script finished."
