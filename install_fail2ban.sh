####################### Install Fail2ban #########################

# wget -O- http://neuro.debian.net/lists/trusty.us-ca.libre | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list

# sudo apt-key adv --recv-keys --keyserver hkp://pgp.mit.edu:80 0xA5D32F012649A5A9

# sudo apt-get update

# sudo apt-get install fail2ban

##################################################################

# mkdir -p /etc/fail2ban
# mkdir -p /etc/fail2ban/filter.d
# mkdir -p /etc/fail2ban/action.d

\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/403block.conf > /etc/fail2ban/filter.d/403block.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/antispam-bee.conf > /etc/fail2ban/filter.d/antispam-bee.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/apache-badbots.conf > /etc/fail2ban/filter.d/apache-badbots.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/block-misc.conf > /etc/fail2ban/filter.d/block-misc.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/botsearch-common.conf > /etc/fail2ban/filter.d/botsearch-common.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-badrequests.conf > /etc/fail2ban/filter.d/nginx-badrequests.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-botsearch.conf > /etc/fail2ban/filter.d/nginx-botsearch.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-http-auth.conf > /etc/fail2ban/filter.d/nginx-http-auth.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-login.conf > /etc/fail2ban/filter.d/nginx-login.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-nohome.conf > /etc/fail2ban/filter.d/nginx-nohome.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-noproxy.conf > /etc/fail2ban/filter.d/nginx-noproxy.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-noscript.conf > /etc/fail2ban/filter.d/nginx-noscript.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/nginx-req-limit.conf > /etc/fail2ban/filter.d/nginx-req-limit.conf

sudo apt-get update

\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/php-url-fopen.conf > /etc/fail2ban/filter.d/php-url-fopen.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/postfix-sasl.conf > /etc/fail2ban/filter.d/postfix-sasl.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/postfix.conf > /etc/fail2ban/filter.d/postfix.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/sshd-ddos.conf > /etc/fail2ban/filter.d/sshd-ddos.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/sshd.conf > /etc/fail2ban/filter.d/sshd.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/wordpress-userenum.conf > /etc/fail2ban/filter.d/wordpress-userenum.conf
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/filter.d/wordpress.conf > /etc/fail2ban/filter.d/wordpress.conf

\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/action.d/iptables-repeater.conf > /etc/fail2ban/action.d/iptables-repeater.conf

\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/jail.local > /etc/fail2ban/jail.local
\curl -sSL https://raw.githubusercontent.com/gagomap/fail2ban_settings/master/fail2ban/jail.conf > /etc/fail2ban/jail.conf


# service fail2ban restart