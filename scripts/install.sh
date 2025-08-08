sudo podman build -t kanuseite ../

sudo cp ../services/* /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl enable kanuseite.service
sudo systemctl enable kanuseite.socket
sudo systemctl start kanuseite.socket

sudo cp ../nginx/kanu-oderbruch.de /etc/nginx/sites-available
sudo cp ../nginx/kanu-oderbruch.de /etc/nginx/sites-enabled

nginx -t
sudo systemctl restart nginx