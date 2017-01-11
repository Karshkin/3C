apt-get -y install apache2

sudo rm -rf /var/www/
ln -s /vagrant/paginas/ /var/www

sudo cp /home/vagrant/config/pagina1.com.conf /etc/apache2/sites-available/
sudo cp /home/vagrant/config/pagina2.com.conf /etc/apache2/sites-available/

sudo a2dissite default
sudo a2ensite pagina1.com.conf
sudo a2ensite pagina2.com.conf

service apache2 reload
