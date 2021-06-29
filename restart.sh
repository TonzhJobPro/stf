# 默認 --vnc-initial-size 600x800 
# adb kill-server && adb devices && rethinkdb --bind all --cache-size 8192 --http-port 7090
cnpm install && kill -9 `ps -ef | grep 'stf\|iproxy\|tidevice' | grep -v grep|awk '{print $2}'` && npm link
setsid stf local --public-ip 10.0.242.17 --allow-remote --port 7100 --auth-type ldap  --auth-options '["--ldap-url","ldaps://ldap.okg.com:636","--ldap-bind-dn","cn=readonly,dc=okcoin,dc=com","--ldap-search-dn","ou=People,dc=okcoin,dc=com","--ldap-bind-credentials","OKCoin_LDAP@readonly","--ldap-search-class","inetOrgPerson","--ldap-search-field","cn"]'
