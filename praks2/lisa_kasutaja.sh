#!/bin/bash
sudo useradd -r -m -s /bin/bash $1 
sudo passwd -d $1
if [ $? -eq 0 ]; then #kontrollib kas väljund puudub, kui väljund puudub, siis kasutaja on lisatud
	echo "kasutaja $1 on lisatud süsteemi"
	cut /etc/passwd | grep $1
	ls -la /home/$1
else
	echo "probleem kasutaja lisamisega"
	echo $? #väljastab errori
fi
