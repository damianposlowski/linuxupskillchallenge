 #!/bin/bash
 #
 #   attacker - prints out the last failed login attempt
 #
 echo "The last failed login attempt came from IP address:"
 grep -i "disconnected from" /var/log/auth.log|tail -1| cut -d: -f4| cut -f7 -d" "