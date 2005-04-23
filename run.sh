#/bin/sh

cd /data/hidden/backups/cd-backup
./backup.pl 600 kuiki.net '/data/hidden/backups/rosa/www-backup=www' '/data/hidden/backups/rosa/mysql.dump=mysql.dump' '/home=home'
result=$?
cdrecord -dao -eject dev=/dev/hdc driveropts=burnfree kuiki.net.iso
echo $result
