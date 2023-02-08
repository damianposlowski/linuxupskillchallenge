 #!/bin/bash
 #
 #    topattack - list the most persistent attackers
 #
 if [ -z "$1" ]; then
 echo -e "\nUsage: `basename $0` <num> - Lists the top <num> attackers by IP"
 exit 0
 fi
 echo " "
 echo "Persistant recent attackers"
 echo " "
 echo "Attempts      IP "
 echo "-----------------------"
 grep "Disconnected from authenticating user root" /var/log/auth.log|cut -d: -f 4 | cut -d" " -f7|sort |uniq -c |sort -nr |head -$1