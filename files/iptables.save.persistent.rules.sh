#!/bin/bash -x 


#sudo su -c "apt-get install -y netfilter-persistent   "
#sudo su -c "$HOME/iptables.sh "

#sudo su -c 'iptables-save > /etc/iptables/rules.v4'
#sudo su -c 'ip6tables-save > /etc/iptables/rules.v6'


echo "Must have sudo -s ! " 

su -c "$HOME/iptables.sh "
su -c "$HOME/iptables.sh /etc/ " 
chmod +x iptables.sh


echo "[Unit]" >  /etc/systemd/system/iptables-rules.service 
echo "Description = Apply base firewall rules"  >>  /etc/systemd/system/iptables-rules.service 

echo "[Service]"  >>  /etc/systemd/system/iptables-rules.service 
echo "Type=oneshot"  >>  /etc/systemd/system/iptables-rules.service 
echo "ExecStart=/etc/iptables.sh"  >>  /etc/systemd/system/iptables-rules.service 

echo "[Install]"  >>  /etc/systemd/system/iptables-rules.service 
echo "WantedBy=network-pre.target"  >>  /etc/systemd/system/iptables-rules.service 


systemctl enable iptables-rules.service
systemctl list-units | grep -i iptable

iptables -vnL

