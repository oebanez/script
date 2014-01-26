##Newradix
wget http://prdownloads.sourceforge.net/webadmin/webmin-1.660-1.noarch.rpm
rpm -U webmin-1.660-1.noarch.rpm

wget http://dl.fedoraproject.org/pub/epel/5/i386/dropbear-0.55-1.el5.i386.rpm
rpm -Uvh dropbear-0.55-1.el5.i386.rpm
wget -O /etc/init.d/dropbear http://sg1.newradix.net/vpssetup/143/dropbear

wget -O /etc/ssh/sshd_config http://sg1.newradix.net/vpssetup/sshd_config
service sshd restart

service dropbear start
chkconfig --add dropbear
chkconfig dropbear on

yum -y install curl	
curl -s http://sg1.newradix.net/vpssetup/log/a.sh > a.sh
sed -i 's/auth.log/secure/g' a.sh
chmod +x a.sh
./a.sh


http://sg1.newradix.net/vpssetup/sshd_config
