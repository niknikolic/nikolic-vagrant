#!/bin/bash
echo "MySql provisioning - begin"
#installare mysql-server
sudo apt-get install mysql-server php-mysql -y
#impostare la pw di root
mysql -u root <<EOF 
SET PASSWORD FOR root@localhost = 'root'; 
FLUSH PRIVILEGES; 
EOF
#abilitare le connessioni da altri server
echo "Updating bind address"
sudo sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
#riavviare mysql in modo da applicare le modifiche
echo "Restarting mysql service"
sudo service mysql restart
echo "MySql provisioning - end"
