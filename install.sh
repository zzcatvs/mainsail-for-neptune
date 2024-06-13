#!/bin/bash

HOME_DIR="/home/mks/mainsail-for-neptune"

# 执行安装命令
echo "Starting installation process..."
sudo sed -i 's/listen 80/listen 81/g' /etc/nginx/sites-available/fluidd
sudo cp -a "${HOME_DIR}/.theme" /home/mks/klipper_config/
sudo cp -a "${HOME_DIR}/mainsail" /etc/nginx/sites-available/mainsail-for-neptune
sudo ln -s /etc/nginx/sites-available/mainsail-for-neptune /etc/nginx/sites-enabled/
sudo systemctl restart nginx

# 检查上一个命令是否成功执行
if [ $? -eq 0 ]; then
    echo "Installation successful!"
else
    echo "Installation failed, please check the error messages above."
    exit 1
fi

# 脚本结束
echo "Fluidd port changed to 81."
