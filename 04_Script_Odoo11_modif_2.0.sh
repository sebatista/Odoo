
#CORTAR EL SCRIPT PONERLO EN OTRO LADO
sudo su - odoo -s /bin/bash
git clone --depth 1 --branch 11.0 --single-branch https://github.com/odoo/odoo odoo-server/
sudo pip3 install -r odoo-server/requirements.txt
sudo pip3 install -r odoo-server/doc/requirements.txt
exit