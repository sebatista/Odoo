#
# Localizacion argentina Otros/Varios
#

# Crear directorios para Addons
if [ -d /opt/odoo/addons/ ] ;
then
	echo "Directorio /opt/odoo/addons/ existente"
else
	sudo mkdir /opt/odoo/addons
	echo "Directorio /opt/odoo/addons/ creado"
fi

# Crear directorios para OTROS
if [ -d /opt/odoo/addons/others/ ];
then
	echo "El directorio /opt/odoo/addons/others/ ya existe."
else
	sudo -H mkdir /opt/odoo/addons/others
	echo "Directorio /opt/odoo/addons/others/ creado."
fi

cd /opt/odoo/addons/others


# 2020-01-01 - Jobiols -> solo utilizarémos ARBA y SICORE.
# 2020-01-01 - Regaby -> solo utilizaremos ???
#sudo -H git clone --depth 1 --branch 12.0 --single-branch https://github.com/akretion/odoo-usability akretion-odoo-usability	# no se mantiene mas.
#pip3 install -r akretion-odoo-usability/requirements.txt

#sudo -H git clone --depth 1 --branch 12.0 --single-branch https://github.com/sebatista/jobiols-odoo-addons jobiols-odoo-addons
sudo -H git clone --depth 1 --branch 12.0 --single-branch https://github.com/jobiols/odoo-addons jobiols-odoo-addons
pip3 install -r jobiols-odoo-addons/requirements.txt
pip3 install -r jobiols-odoo-addons/l10n_ar_export_arba/requirements.txt
pip3 install -r jobiols-odoo-addons/l10n_ar_export_sicore/requirements.txt

#sudo -H git clone --depth 1 --branch 12.0 --single-branch https://github.com/jobiols/odoo-jeo-ce jobiols-odoo-jeo-ce
#pip3 install -r jobiols-odoo-jeo-ce/requirements.txt

sudo -H git clone --depth 1 --branch 12.0 --single-branch https://github.com/it-projects-llc/access-addons it-projects-llc-access-addons
pip3 install -r it-projects-llc-access-addons/requirements.txt

sudo -H git clone --depth 1 --branch 12.0 --single-branch https://github.com/it-projects-llc/mail-addons it-projects-llc-mail-addons
pip3 install -r it-projects-llc-mail-addons/requirements.txt

sudo -H git clone --depth 1 --branch 12.0 --single-branch https://github.com/it-projects-llc/sync-addons it-projects-llc-sync-addons
pip3 install -r it-projects-llc-sync-addons/requirements.txt

sudo -H git clone --depth 1 --branch 12.0 --single-branch https://github.com/it-projects-llc/website-addons it-projects-llc-website-addons
pip3 install -r it-projects-llc-website-addons/requirements.txt

sudo -H git clone --depth 1 --branch 12.0 --single-branch https://github.com/regaby/odoo-addons regaby-odoo-addons
pip3 install -r regaby-odoo-addons/requirements.txt

#REVISAR 
#https://github.com/jobiols/rafi16jan-backend-theme
#https://github.com/treytux/odoo-mailchimp-tools


sudo chown -R odoo:odoo -R /opt/odoo/addons/others/
sudo chmod -R 775 /opt/odoo/addons/others/



cd /opt/odoo/addons/others/jobiols-odoo-addons/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/it-projects-llc-access-addons/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/it-projects-llc-mail-addons/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/it-projects-llc-sync-addons/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/it-projects-llc-website-addons/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/regaby-odoo-addons/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt



sudo chown -R odoo:odoo -R /opt/odoo/addons/others/
sudo chmod -R 775 /opt/odoo/addons/others/
