
# Creamos usuario, grupo y home para odoo
sudo adduser --system --home=/opt/odoo --group odoo
sudo usermod -aG sudo odoo
sudo passwd odoo


#CORTAR EL SCRIPT PONERLO EN OTRO LADO
# Instalamos Gdata
cd /opt/odoo
sudo wget https://pypi.python.org/packages/a8/70/bd554151443fe9e89d9a934a7891aaffc63b9cb5c7d608972919a002c03c/gdata-2.0.18.tar.gz
sudo tar zxvf gdata-2.0.18.tar.gz
sudo chown -R odoo: gdata-2.0.18
sudo -s
cd gdata-2.0.18/
python setup.py install
exit