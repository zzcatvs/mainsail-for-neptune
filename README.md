# mainsail-for-neptune
![](https://raw.githubusercontent.com/zzcatvs/mainsail-for-neptune/main/img/1.png)

![](https://raw.githubusercontent.com/zzcatvs/mainsail-for-neptune/main/img/4.png)
Elegoo neptune mainsail-theme

1.SSH Connection, default username is usually:

`user: mks`

`password:makerbase`

2.SSH command prompt:

```
cd ~
git clone https://github.com/zzcatvs/mainsail-for-neptune.git
sudo bash ~/mainsail-for-neptune/install.sh
```

3.Installation successful,Fluidd port changed to 81.

![](https://raw.githubusercontent.com/zzcatvs/mainsail-for-neptune/main/img/2.png)

![](https://raw.githubusercontent.com/zzcatvs/mainsail-for-neptune/main/img/3.png)

4.If you want to uninstall:

```
sudo bash ~/mainsail-for-neptune/uninstall.sh
```

5.If you don't want to run fluid.
*stop fluidd：*

```
sudo rm -f /etc/nginx/sites-enabled/fluidd
sudo systemctl restart nginx
```

*start fluidd:*

```
sudo ln -s /etc/nginx/sites-available/fluidd /etc/nginx/sites-enabled/
sudo systemctl restart nginx
```

