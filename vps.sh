##Newradix
wget http://prdownloads.sourceforge.net/webadmin/webmin-1.660-1.noarch.rpm
rpm -U webmin-1.660-1.noarch.rpm

wget http://dl.fedoraproject.org/pub/epel/5/i386/dropbear-0.55-1.el5.i386.rpm
rpm -Uvh dropbear-0.55-1.el5.i386.rpm
wget -O /etc/init.d/dropbear http://newradix.net/repo/dropbear

wget -O /etc/ssh/sshd_config http://newradix.net/repo/sshd_config
service sshd restart

service dropbear start
chkconfig --add dropbear
chkconfig dropbear on

yum -y install curl	
curl -s https://raw.github.com/oebanez/script/master/ceklogin.sh > ceklogin.sh
sed -i 's/auth.log/secure/g' ceklogin.sh
chmod +x ceklogin.sh
./ceklogin.sh

http://newradix.net/repo/sshd_config

