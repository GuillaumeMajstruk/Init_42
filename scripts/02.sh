OUTFILE="/var/log/update_script.log"

echo "Updating packages"
apt-get update -y > $OUTFILE
echo "Upgrading packages"
apt-get upgrade -y > $OUTFILE
