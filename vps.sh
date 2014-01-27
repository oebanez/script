##Newradix
wget http://prdownloads.sourceforge.net/webadmin/webmin-1.660-1.noarch.rpm
rpm -U webmin-1.660-1.noarch.rpm

wget http://dl.fedoraproject.org/pub/epel/5/i386/dropbear-0.55-1.el5.i386.rpm
rpm -Uvh dropbear-0.55-1.el5.i386.rpm
wget -O /etc/init.d/dropbear https://raw.github.com/oebanez/script/master/dropbear

wget -O /etc/ssh/sshd_config https://raw.github.com/oebanez/script/master/sshd_config
service sshd restart

service dropbear start
chkconfig --add dropbear
chkconfig dropbear on

yum -y install curl	
curl -s https://raw.github.com/oebanez/script/master/ceklogin.sh > ceklogin.sh
sed -i 's/auth.log/secure/g' ceklogin.sh
chmod +x ceklogin.sh
./ceklogin.sh

rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

yum -y install fail2ban
service fail2ban restart
chkconfig fail2ban on

wget https://raw.github.com/oebanez/script/master/speedtest-cli.py


