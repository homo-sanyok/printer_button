sudo apt update
sudo apt install python3 python3-pip usbmount -y
sudo pip3 install OPi.GPIO requests
sudo cp /home/klipper/printer_button/services/*.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable printer_button_main.service
sudo systemctl enable printer_button_lastfile.service
sudo systemctl start printer_button_main.service
sudo systemctl start printer_button_lastfile.service
sudo cp /home/klipper/printer_button/services/10-local.rules /etc/udev/rules.d/
sudo service udev reload
sudo service udev restart