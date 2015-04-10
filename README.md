# All Your Base Are Belong To Us

A troll script for april fools to use on ur friendly mac loving friends

---

## Setup
Clone this repo in your unsuspecting friend's mac computer.. (duh)

### One off usage
1. run "./aybabtu.sh &"
2. take down the ip and port number
3. wait for your victim... (yes wait for it.....)
4. run "nc victim\_ip victim\_port\_number
5. after successfully netcating into your friend's computer...
6. run "./boom.sh"
7. Bam!! 

### Crontab it
1. run "crontab -e"
2. add "\*/30 \* \* \* \* /DIRECTORY\_WHERE\_SCRIPT\_IS/aybabtu/aybabtu.sh" to crontab and save (this runs the script every 30 mins)
3. use either mac port scanner utility or install nmap to scan ur victim's port (since I am too lazy to implement a port reporting callback in that script) 
4. run "nc victim\_ip victim\_port\_number
5. after successfully netcating into your friend's computer...
6. run "./boom.sh" (you probably need to navigate to the right folder since it ran from cron)
7. Bam!! 
8. continue trolling ur friend once in a while until he discovers the cronjob
