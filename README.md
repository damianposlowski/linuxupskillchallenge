These are my notes made while taking the linuxupskillchallenge. I used them to have a quick recap resource and to document my journey with the challenge. This repo will also include the accompanying bash scripts.

To take the challenge visit:
https://www.reddit.com/r/linuxupskillchallenge/


**Day 0**
<br>Setup a server (Ubuntu 20.04 (LTS) x64) on Digital Ocean
<br>Create an admin account with:
<br>\$ adduser username
<br>\$ usermod -a -G adm username
<br>\$ usermod -a -G sudo username
<br>Login to admin and update Ubuntu Linux system with:
<br>\$ sudo apt upgrade
<br>\$ sudo apt update

**Day 1**
<br>Setup Xubuntu Virtual Machine in Oracle Virtual Box
<br>Remote log into the server with:
<br>\$ ssh username@IPaddress
<br>Check basic command (ls, uptime, free, df -h, uname -a)
<br>Check for existing ssh keys with:
<br>\$ ls -al ~/.ssh/id_*.pub
<br>Setup passwordless SSH login with:
<br>\$ ssh-keygen -t rsa -b 4096 -C "email@domain.com"
<br>\$ ssh-copy-id username@IPaddress
<br>Show space and processes running with:
<br>\$ df -h
<br>\$ free -h
<br>\$ ps

**Day 2**
<br>Test creating directories with:
<br>\$ mkdir test
<br>Learn about pwd and ls with switches (ls -ltra), understand hidden files (starting with .)
<br>Try moving around different directories with:
<br>\$ cd ./test/anotherTest
<br>\$ cd ../
<br>\$ cd ~
<br>\$ cd –
<br>\$ cd
<br>\$ pushd ./test
<br>\$ pushd ./anotherTest
<br>\$ popd
<br>Learn about the full path and relative path to access the directory

**Day 3**
<br>Learn about the sudo command
<br>Learn about the cat and less commands (cat for string manipulation, less for file  reading)
<br>Reboot the system and checking uptime with:
<br>\$ sudo reboot
<br>\$ uptime
<br>Enter and exit from the root user with:
<br>\$ sudo -i
<br>\$ exit
<br>Rename the server and blocking the hostname change after reboot (using vim text editor) with:
<br>\$ sudo hostnamectl set-hostname myservername
<br>\$ sudo vi /etc/cloud/cloud.cfg
<br>Change the value to "preserve_hostname: true" and save with ":x"
<br>Check the timezone, filter by Europe and change to my current location with:
<br>\$ timedatectl
<br>\$ timedatectl list-timezones
<br>\$ timedatectl list-timezones | grep Europe
<br>\$ sudo timedatectl set-timezone Europe/Warsaw

**Day 4**
<br>Try searching for different packages with:
<br>\$ apt search "package name"
<br>Install a package with:
<br>\$ sudo apt install package name
<br>Learn how to use the Midnight Commander app

**Day 5**
<br>Use the more and less commands with:
<br>\$ more ../../var/log/auth.log
<br>type "h" to see how to navigate
<br>type "q" to quit
<br>\$ less ../../var/log/auth.log
<br>type "h" to see how to navigate
<br>type "g" to get to the beginning of the file
<br>type "G" to get to the end of the file
<br>type "/" to search
<br>type "n" to see the next search result
<br>type "N" to see the previous search result
<br>type "q" to quit
<br>Learn about the history command and repeating previous lines with:
<br>\$ history
<br>\$ !20
<br>Use Ctrl + r to search for previous commands
<br>Use nano to create a new file with:
<br>\$ nano test.txt
<br>\$ less test.txt

**Day 6**
<br>Learn about vi/vim editor
<br>Check the version with:
<br>\$ vi --version
<br>Learn about the normal and insert mode:
<br>"Press Esc twice or more to return to normal mode"
<br>Copy a file to test vim with:
<br>\$ cp -v /etc/services testfile
<br>\$ vim testfile
<br>Use "!q:" to quit without saving
<br>Use the keys "h" "j" "k" and "l" to move around
<br>In normal mode try deleting 33 lines with "33dd"
<br>undo the changes with "u" or "ctrl + r"
<br>Use "G" to get to the bottom of file
<br>use "gg" to get to the top of the file
<br>Find text, for example "sun" with "/sun", then use "n" to get the next result
<br>Replace text with "%s/old/new/c" or for global "%s/old/new/gc"
<br>Delete two lines with "2dd", then revert with "u"
<br>Paste these lines somewhere with "p"
<br>Cut character with "x" in normal mode and "delete" in insert mode and "d"or "x" in visual mode paste the character somewhere with "p"
<br>Copy with "y", paste with "p"
<br>Press "i" to start the insert mode and write some text
<br>Press "v" to enter the visual mode
<br>Use ":w" to write the changes to the file and ":wq" to save and quit
<br>Use ":w filename" to save as a different file

**Day 7**
<br>Refresh the available package list with:
<br>\$ sudo apt update
<br>Install apache web server with:
<br>\$ sudo apt install apache2
<br>Browse your sever IP to see if apache works
<br>Stop apache web server with:
<br>\$ sudo systemctl stop apache2
<br>Start apache web server with:
<br>\$ sudo systemctl start apache2
<br>Check server status with:
<br>\$ systemctl status apache2
<br>Check the apache configuration file with:
<br>\$ less /etc/apache2/apache2.conf
<br>\$ vim /etc/apache2/apache2.conf
<br>Check the default webpage location with:
<br>\$ vim /etc/apache2/sites-enabled/000-default.conf
<br>View code of the default page with:
<br>\$ vim /var/www/html/index.html
<br>Edit code on the default page with:
<br>\$ sudo vim /var/www/html/index.html
<br>"i" and add/edit code
<br>use "ggVG" to select all (gg to move to the top, V to enter visual mode, G to select all till the end)
<br>use "ggdG" to delete all (gg to move to the top, dG to delete everything till the end of file)
<br>":qw" to save it and quit
<br>Test your page by browsing the IP again
<br>Check apache logs with:
<br>\$ cd /var/log/apache2
<br>\$ ls
<br>\$ less access.log
<br>\$ less error.log
<br>Find a websites IP address with:
<br>\$ dig +short www.yourwebsitedomain.com
<br>Check IP address with:
<br>\$ sudo apt install whois
<br>\$ whois IP address
<br>Make sure the latest security updates are installed with:
<br>\$ sudo apt update
<br>\$ sudo apt upgrade

**Day 8**
<br>Print something on the screen with:
<br>\$ echo text
<br>View the file content with:
<br>\$ cat /var/log/apache2/access.log
<br>\$ less /var/log/apache2/access.log
<br>Use reverse "tac" which is a reverse "cat", with:
<br>\$ tac /var/log/apache2/access.log
<br>Practice "less" controls (g, G, /, n, N)
<br>Search for sudo uses with:
<br>\$ less /var/log/auth.log
<br>Search with "/" then "n" for next line
<br>Look at beginning and end of a file with:
<br>\$ head /var/log/apache2/access.log
<br>\$ tail /var/log/apache2/access.log
<br>\$ head -5 /var/log/apache2/access.log
<br>Follow a log in real time with:
<br>\$ tail -f /var/log/apache2/access.log
<br>Count the number of lines, words or characters with:
<br>\$ wc file.txt
<br>\$ wc -l file.txt
<br>\$ wc -wc file.txt
<br>Try using the pipe "|" symbol with cat and grep (a filter command):
<br>\$ cat /var/log/auth.log | grep "authenticating"
<br>Use simpler version with:
<br>\$ grep "authenticating" /var/log/auth.log
<br>Pipe the simpler grep command with another filter with:
<br>\$ grep "authenticating" /var/log/auth.log | grep "root"
<br>Filter grep results even further with the cut command, using -d (delimiter) and -f (field) with:
<br>\$ grep "authenticating" /var/log/auth.log| grep "root"| cut -f 10- -d" "
<br>the delimiter is what separates the field (in this case " ", so empty space), and f says how many of
<br>these fields should be cut ("-f 10-12" shows 3 fields, from 10 till 12)
<br>Invert the search (filter out matching values) using "-v" with:
<br>\$ grep "authenticating" /var/log/auth.log | grep -v "root"| cut -f 10- -d" "
<br>The above shows login attempts from other users than root
<br>Save results to file with:
<br>\$ ls -ltr > listing.txt
<br>\$ grep "authenticating" /var/log/auth.log| grep -v "root"| cut -f 10- -d" " > ~/attackers.txt
<br>Append a file with:
<br>\$ echo "text at the bottom" >> file.txt
<br>Select just the unique and sorted IP addresses of attackers with:
<br>\$ grep "authenticating" /var/log/auth.log| grep -v "root"| rev | cut -f4 -d" " | rev | sort | uniq
<br>Try regular expression to get the IP addresses with:
<br>\$ grep "authenticating" /var/log/auth.log| grep -v "root"| grep -o "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}" | sort | uniq
<br>Try "awk" and "sed" with:
<br>\$ ls -l | awk ‘{print $3}’
<br>above prints the 3rd column from the list of files
<br>\$ awk '{print $1,$4}' file1.txt
<br>above prints the first and forth word from the file
<br>\$ awk '{print NR, $1,$4}' file1.txt
<br>above adds a line number to the print
<br>\$ sed -n ‘/hello/p’ file1.txt
<br>above prints all the lines with "hello"
<br>\$ sed ‘s/hello/HELLO/’ file1.txt
<br>above replaces "hello" with "HELLO"
<br>\$ sed ‘/hello/,+2d’ file1.txt
<br>above deletes the first two lines with "hello"

**Day 9**
<br>Check open ports with:
<br>\$ sudo systemctl start apache2
<br>\$ ss -ltpn
<br>ports 80 and 22 open "to the world" on all local IP addresses - and port 53 (DNS) open only on a special local address
<br>Scan your server with:
<br>\$ sudo apt install nmap
<br>\$ nmap localhost
<br>\$ nmap 127.0.0.1
<br>port 80 (http) is for Apache (open when Apache is running), port 22 (ssh) is how your connected to the cloud server (open all the time, when server is running)
<br>Find exposed IP addresses:
<br>\$ ip a
<br>above lists all IP addresses of your network card
<br>\$ nmap 104.253.14.92
<br>above scans the IP address
<br>\$ nmap localhost
<br>above scans your server
<br>Check firewall rules with:
<br>\$ sudo iptables -L
<br>policy ACCEPT means that there is no firewalling – all traffic is accepted
<br>Use the "uncomplicated firewall" command with:
<br>\$ sudo apt install ufw
<br>\$ sudo ufw allow ssh
<br>\$ sudo ufw deny http
<br>\$ sudo ufw enable
<br>\$ sudo iptables -L | grep "http"
<br>now all the incoming traffic to port 80/http is dropped
<br>Revert the above with:
<br>\$ sudo ufw allow http
<br>\$ sudo ufw enable
<br>Check the status with:
<br>\$ sudo ufw status
<br>Disable firewall with:
<br>\$ sudo ufw disable

**Day 10**
<br>Learn about task scheduling
<br>Check the scheduled tasks for logged user and the root user with:
<br>\$ crontab -l
<br>\$ sudo crontab -l
<br>Check the system-wide crontab with:
<br>\$ less /etc/crontab
<br>Check system-wide scheduled tasks with:
<br>\$ ls /etc/cron.*
<br>\$ ls /etc/cron.daily
<br>Listed tasks run in alphabetical order
<br>Add tasks in the crontab file with:
<br>\$ sudo vim /etc/crontab
<br>"30 10 * * * root echo $(date) "Message text" >> /home/folder-name/cron-messages"

above ads message every day at 10.30
<br>"@reeboot root echo $(date) "Reboot text" >> /home/ folder-name /cron-messages"
<br>above ads message at every reboot
<br>Learn about "at" and "anacron" commands:
<br>- at - schedules task only once
<br>- anacron - can schedule tasks with frequency defined in days, but does not drop a task when the machine is turned off (instead it will run the task when you power on your machine)
<br>- cron - can schedule tasks with frequency of minutes, but drops a task if server if offline
<br>Learn about "logrotate" and check the current rotation with:
<br>\$ ls /etc/logrotate.*
<br>Check the system timers with:
<br>\$ systemctl list-timers

**Day 11**
<br>Learn how to find files and file content with locate, find, grep, which
<br>Use locate to search for files with:
<br>\$ sudo apt install mlocate
<br>\$ locate access.log
<br>\$ sudo updated
<br>above updates index of recent files (the index is updated nightly by cron)
<br>Use find (slower than locate because it searches the filesystem not index) to search for files with:
<br>\$ find /var -name access.log
<br>above searches for access.log in /var
<br>\$  find /home -mtime -3
<br>above searches for all files in /home modified in the last 3 days
<br>\$ find /var -name access.log 2>&1 | grep -vi "Permission denied"
<br>above filters out files without permission (you could also use sudo with the find command)
<br>Use grep -R to search for files with:
<br>\$ grep -R -i "PermitRootLogin" /etc/*
<br>above searches for files containing "PermitRootLogin" in /etc (-i makes the search case insensitive)
<br>To search for compressed files use zgrep (and to view them use zless)
<br>Search for command location (where is it run from) with:
<br>\$ echo $PATH
<br>above shows all locations in your path
<br>\$ which nano
<br>\$ which grep
<br>\$ which vim
<br>\$ which reboot

**Day 12**
<br>Learn about sending files between your local machine and the server
<br>Use SFTP (SSH File Transfer Protocol) to move files with:
<br>\$ sftp -i "keypair file" user@serverIP
<br>Check the keypair file run the below:
<br>\$ cd ~/.ssh/
<br>Check files and directories with:
<br>\$ pwd
<br>shows that it’s a remote directory
<br>\$ lpwd
<br>shows local directory
<br>\$ ls
<br>lists remote directory files
<br>\$ lls
<br>lists local directory files
<br>Transfer files with:
<br>\$ put ./Desktop/file.txt
<br>above copies the file from local to remote directory
<br>\$ get server-file.txt
<br>above downloads the file from remote to local directory
<br>\$ mput *file
<br>above copies all the files with "file" ending, to the remote directory
<br>\$ mget another*
<br>above downloads all the files starting with "another" to your local directory
<br>\$ exit

**Day 13**
<br>Check files ownership with:
<br>\$ ls -l
<br>Above shows permission for r (read), w (write) and x (execute/run) for three categories of users:
<br>- owner
<br>- group
<br>- others
<br>Create a file and add some text with:
<br>\$ vim test.txt
<br>Check permissions with:
<br>\$ ls -l
<br>Remove writing permission from user and group, and reading permissions from others with:
<br>\$ chmod u-w test.txt
<br>\$ chmod g-w test.txt
<br>\$ chmod o-r test.txt
<br>\$ vim test.txt
<br>Add back permissions to edit with:
<br>\$ chmod u+w test.txt
<br>Check your groups with:
<br>\$ groups
<br>Add new user or add user to a group with:
<br>\$ adduser fred
<br>\$ usermod -a -G group user
<br>Change user and check groups with:
<br>\$ sudo su fred
<br>\$ groups
<br>\$ exit

**Day 14**
<br>Check disk space with:
<br>\$ df -h
<br>Create new user with:
<br>\$ sudo adduser bob
<br>\$ sudo passwd bob
<br>Check added users with:
<br>\$ less /etc/passwd
<br>\$ less /etc/group
<br>\$ sudo less /etc/shadow
<br>above shows hashed password
<br>\$ ls ./../
<br>above shows created home directories
<br>\$ getent group {1000..6000}
<br>above shows only "non system" users
<br>\$ groups mainuser bob
<br>above shows listed user groups
<br>\$ sudo su bob
<br>Try rebooting with:
<br>\$ reboot
<br>\$ sudo reboot
<br>Check the file defining the root/sudo privileges with:
<br>\$ sudo less /etc/sudoers
<br>Change users permission to allow sudo reboot with:
<br>\$ sudo -i
<br>\$ visudo
<br>Add the below lines to the file:
<br># Allow user "bob" to run "sudo reboot"
<br># ...and don't prompt for a password
<br>#
<br>bob ALL = NOPASSWD:/sbin/reboot
<br>Check the changes with:
<br>\$ sudo su bob
<br>\$ whoami
<br>above shows current shell/user
<br>\$ sudo reboot
<br>Change username and groupname with:
<br>\$ sudo usermod -l newname bob
<br>\$ sudo groupmod -n newname oldname

**Day 15**
<br>View URLs of repositories for the packages (apps) you can install with:
<br>\$ less /etc/apt/sources.list
<br>you can uncomment universe, multiverse and partner repository lines from this file to allow additional package installation (for example non-open source)
<br>Add additional repositories via command line with:
<br>\$ sudo add-apt-repository universe
<br>\$ sudo apt update
<br>\$ sudo apt upgrade
<br>Check the list of packages you can install with:
<br>\$ apt-cache dump
<br>click "ctrl + c" to exit
<br>\$ apt-cache dump | grep "Package:" | wc -l
<br>above shows the number of packages you can install (grep filters to show only lines with package name and "wc -l" counts lines)
<br>Check information about an installed package with:
<br>\$ sudo apt-cache show apache2
<br>\$ sudo apt-cache depends apache2
<br>above shows dependancies (packages that need to be installed for it to work)
<br>\$ sudo apt-cache rdepends apache2
<br>above shows packages that depends on this one to work properly
<br>Install "neofetch" to view your configuration and hardware with:
<br>\$ sudo apt install neofetch
<br>\$ neofetch
<br>\$ neofetch --version
<br>Instal PPA (Personal Package Archive) to get unofficial/new/personal software with:
<br>\$  sudo add-apt-repository ppa:dawidd0811/neofetch
<br>\$ sudo apt update
<br>\$ sudo apt install neofetch
<br>\$ neofetch --version
<br>Remove a package with:
<br>\$ sudo apt autoremove packagename

**Day 16**
<br>Create a snapshot of current files with:
<br>\$ tar -cvf myinits.tar /etc/init.d/
<br>\$ tar -cvf test.tar /./test-folder/
<br>Compress the tar file to create a "tarball" (.tar.gz format) with:
<br>\$ gzip myinits.tar
<br>\$ gzip test.tar
<br>Compress the files in one step (.tgz format) with:
<br>\$ tar -cvzf myinits.tgz /etc/init.d/
<br>in the above, -c means that you are creating an archive (snapshot), -v is giving feedback (making the command verbose), -z is compressing the files and -f lets you specify the file output (for example test.tar)
<br>Check file sizes with:
<br>\$ ls -lh
<br>\$ du -h myinits.tgz
<br>above checks specific file (ls shows all in the current directory)
<br>Untar/unpack .tar and .tar.gz and .tgz files using -x with:
<br>\$ tar -xvf test.tar
<br>\$ tar -xvf test.tar -C /./test-folder/
<br>above lets you select a folder where to untar the files
<br>Check .tar and .tar.gz and .tgz content using -t with:
<br>\$ tar -tvf test.tar
<br>\$ tar -tvf test.tar.gz
<br>\$ tar -tvf test.tgz
<br>Using gzip to compress and uncompress files with:
<br>\$ gzip file-name
<br>\$ gunzip file-name.gz

**Day 17**
<br>Install the standard bundle of common compilers with:
<br>\$ sudo apt install build-essential
<br>Use the latest version of nmap with:
<br>\$ nmap -V
<br>\$ which nmap
<br>above shows where the executable is stored
<br>\$ wget -v https://nmap.org/dist/nmap-7.93.tar.bz2
<br>above downloads the latest 7.93 version
<br>\$ tar -jxvf nmap-7.70.tar.bz2
<br>in the above -j uncompress, -x extracts, -v gives feedback and -f lets you specify the file name
<br>Check the files with:
<br>\$ ls -ltr
<br>\$ mc nmap-7.93/
<br>\$ cd nmap-7.93/
<br>\$ less README.md
<br>Install the nmap with:
<br>\$ less INSTALL
<br>above gives you instruction on what installation commands to use
<br>\$ ./configure
<br>\$ make
<br>\$ sudo make install
<br>Update the index of files and search for nmap with:
<br>\$ sudo updated
<br>\$ locate bin/nmap
<br>you will see both the original (/usr/bin/) and new version (/usr/local/bin/)
<br>Check versions with:
<br>\$ /usr/bin/nmap -V
<br>\$ /usr/local/bin/nmap -V
<br>Execute nmap with:
<br>\$ ./usr/local/bin/nmap ipaddress
<br>\$ ./usr/local/bin/nmap-7.93/nmap localhost
<br>new version
<br>\$ ./usr/bin/nmap-7.93/nmap localhost
<br>old (original) version

**Day 18**
<br>Learn about the logrotate app
<br>Check logs with:
<br>\$ cd /var/log/
<br>\$ ls
<br>Check the current log rotation with:
<br>\$ cd /etc/cron.daily/
<br>\$ cat /etc/logrotate.conf
<br>\$ cat /etc/logrotate.d/apache2
<br>You can change the above file to change log rotation for apache
<br>Check what was happening on the server since boot with:
<br>\$ journalctl -b
<br>\$ journalctl --priority=3
<br>above will show all login attempts
<br>\$ journalctl --priority=1
<br>above shows all the critical logs/errors
<br>\$ journalctl --since today
<br>above shows what happened today
<br>\$ journalctl -f
<br>above shows what is happening in the "live" mode

**Day 19**
<br>Learn about the Linux Virtual Filesystem
<br>View inode (index node), the layer between file name and the data on the disk with:
<br>\$ ls -li
<br>\$ ls -i text.txt
<br>\$ stat test.txt
<br>the filename points to an inode, and the inode points to data on disk (inode example: 35356766)
<br>Create a "hard link" in your home directory with:
<br>\$ cd
<br>\$ ln /etc/passwd link1
<br>Create a "symbolic link" with:
<br>\$ ln -s /etc/passwd link2
<br>Check the link files with:
<br>\$ ls -li
<br>\$ cat link1
<br>\$ cat link2
<br>Check stats for the link and for the file it links to with:
<br>\$ stat link2
<br>\$ stat -L link2
<br>the second one shows stats of the file the link is pointing to (this makes sense only for symbolic links, because hard link have the same inode/data as the file it’s linking to, so -L makes no difference)
<br>Check directory with "symlinks" (symbolic links), to scripts that start when your machine changes to normal running state (runlevel 2) with:
<br>\$ ls -ltr /etc/rc2.d/*
<br>Learn about the different between these link:
<br>1) Hard links:
<br>- Only link to a file, not a directory
<br>- Can't reference a file on a different disk/volume
<br>- Links will reference a file even if it is moved
<br>- Links reference inode/physical locations on the disk
<br>2) Symbolic (soft) links:
<br>- Can link to directories
<br>- Can reference a file/folder on a different hard disk/volume
<br>- Links remain if the original file is deleted
<br>- Links will NOT reference the file anymore if it is moved
<br>- Links reference abstract filenames/directories and NOT physical locations.
<br>- They have their own inode
<br>Create an alias to have an easier way to reference a command with:
<br>\$ sudo apt install cowsay
<br>\$ cowsay moo
<br>\$ alias moo="cowsay moo"
<br>\$ moo
<br>\$ alias name="your command"
<br>\$ name

**Day 20**
<br>Create a bash script with:
<br>\$ vim test.sh
<br>Add "shebang" at the beginning of the script: #!/bin/bash
<br>The above is an interpreter for your script (in this case bash)
<br>Make the script executable with:
<br>\$ chmod +x test.sh
<br>Execute the script with:
<br>\$ ~/scripts/test.sh
<br>or
<br>\$ cd scripts/
<br>\$ ./test.sh
<br>Move the script to somewhere on your $PATH with:
<br>\$ echo $PATH
<br>\$ sudo mv test.sh /usr/local/bin/test.sh
<br>Run the script just using its name (possible because it’s on your $PATH), with:
<br>\$ test.sh
<br>Create variables for referencing or use built-in variables in your script with, with:
<br>\$ LOG="/var/log/auth.log"
<br>\$ my_name="Bob"
<br>\$ echo "hello $my_name, you are using $LOG"
<br>Use positional parameters provided when running the script, with:
<br>script: echo "Hi $1, how are things going in $2?"
<br>\$ printing-script.sh Bob Canada
<br>Above will produce: "Hi Bob, how are things going in Canada?"
<br>Make a parameter mandatory with:
<br>if [ -z $1 ]
<br>then
<br>        echo "Usage is $0 <num>"
<br>        exit 0
<br>fi