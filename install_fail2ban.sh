####################### Install Fail2ban #########################
# Run this scripts only when we need update a jail
# wget -O- http://neuro.debian.net/lists/trusty.us-ca.libre | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list

# sudo apt-key adv --recv-keys --keyserver hkp://pgp.mit.edu:80 0xA5D32F012649A5A9

# sudo apt-get update

# sudo apt-get install fail2ban

##################################################################

# mkdir -p /etc/fail2ban
# mkdir -p /etc/fail2ban/filter.d
# mkdir -p /etc/fail2ban/action.d
echo "############################################################"
echo "Update filter.d"
echo "############################################################"

echo "############################################################"
echo "Install 403block"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/403block.conf > /etc/fail2ban/filter.d/403block.conf
echo "############################################################"

echo "############################################################"
echo "Install antispam-bee"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/antispam-bee.conf > /etc/fail2ban/filter.d/antispam-bee.conf
echo "############################################################"

echo "############################################################"
echo "Install apache-badbots"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/apache-badbots.conf > /etc/fail2ban/filter.d/apache-badbots.conf
echo "############################################################"

echo "############################################################"
echo "Install block-misc"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/block-misc.conf > /etc/fail2ban/filter.d/block-misc.conf
echo "############################################################"

echo "############################################################"
echo "Install botsearch-common"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/botsearch-common.conf > /etc/fail2ban/filter.d/botsearch-common.conf
echo "############################################################"

echo "############################################################"
echo "Install nginx-badrequests"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-badrequests.conf > /etc/fail2ban/filter.d/nginx-badrequests.conf
echo "############################################################"

echo "############################################################"
echo "Install nginx-botsearch"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-botsearch.conf > /etc/fail2ban/filter.d/nginx-botsearch.conf
echo "############################################################"

echo "############################################################"
echo "Install nginx-http-auth"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-http-auth.conf > /etc/fail2ban/filter.d/nginx-http-auth.conf
echo "############################################################"

echo "############################################################"
echo "Install nginx-login"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-login.conf > /etc/fail2ban/filter.d/nginx-login.conf
echo "############################################################"

echo "############################################################"
echo "Install nginx-nohome"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-nohome.conf > /etc/fail2ban/filter.d/nginx-nohome.conf
echo "############################################################"

echo "############################################################"
echo "Install nginx-noproxy"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-noproxy.conf > /etc/fail2ban/filter.d/nginx-noproxy.conf
echo "############################################################"

echo "############################################################"
echo "Install nginx-noscript"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-noscript.conf > /etc/fail2ban/filter.d/nginx-noscript.conf
echo "############################################################"

echo "############################################################"
echo "Install nginx-req-limit"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-req-limit.conf > /etc/fail2ban/filter.d/nginx-req-limit.conf
echo "############################################################"

echo "############################################################"
echo "Install php-url-fopen"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/php-url-fopen.conf > /etc/fail2ban/filter.d/php-url-fopen.conf
echo "############################################################"

echo "############################################################"
echo "Install postfix-sasl"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/postfix-sasl.conf > /etc/fail2ban/filter.d/postfix-sasl.conf
echo "############################################################"

echo "############################################################"
echo "Install postfix"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/postfix.conf > /etc/fail2ban/filter.d/postfix.conf
echo "############################################################"

echo "############################################################"
echo "Install sshd-ddos"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/sshd-ddos.conf > /etc/fail2ban/filter.d/sshd-ddos.conf
echo "############################################################"

echo "############################################################"
echo "Install sshd"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/sshd.conf > /etc/fail2ban/filter.d/sshd.conf
echo "############################################################"

echo "############################################################"
echo "Install wordpress-userenum"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/wordpress-userenum.conf > /etc/fail2ban/filter.d/wordpress-userenum.conf
echo "############################################################"

echo "############################################################"
echo "Install wordpress"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/wordpress.conf > /etc/fail2ban/filter.d/wordpress.conf
echo "############################################################"

echo "############################################################"
echo "update action.d"
echo "############################################################"

echo "Install action iptables-repeater"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/action.d/iptables-repeater.conf > /etc/fail2ban/action.d/iptables-repeater.conf

echo "############################################################"
echo "update jail.local and jail.conf"
echo "############################################################"

echo "Install jail.local"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/jail.local > /etc/fail2ban/jail.local
echo "Install jail.conf"
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/jail.conf > /etc/fail2ban/jail.conf


# service fail2ban restart