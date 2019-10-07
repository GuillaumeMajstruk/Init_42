MDSUMSAVE="cat /root/crontab_md5"
NEWSUM="md5sum /etc/crontab | cut -d ' ' -f 1"
OBSERVE="/etc/crontab"

if [ "$MDSUMSAVE" != "$NEWSUM" ]
then
  md5sum /etc/crontab | cut -d ' ' -f 1 > /root/crontab_md5
  mail -s "le fichier '$OBSERVE' a ete modifie !" root < /etc/crontab
fi

#a ajouter a crontab -e
# @midnight root sh /chemin/vers/le/script
# ou alors:
# 0 0 * * * root sh /chemin/vers/le/script
