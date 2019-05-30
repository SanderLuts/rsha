#!/bin/bash
file="/home/user/rsha/praks2/kasutajad.txt" #defineerib mis failist lugeda
while IFS= read -r line #loeb üks rida korraga
do #loop, mis käivitub iga rea kohta
sudo useradd -r -m -s /bin/bash $line #lisab kasutaja
sudo passwd -d $line #eemaldab parooli
if [ $? -eq 0 ]; then #kontrollib kas väljund puudub, kui väljund puudub, siis $
        echo "kasutaja $1 on lisatud süsteemi"
        cut /etc/passwd | grep $1
        ls -la /home/$1
else
        echo "probleem kasutaja lisamisega"
        echo $? #väljastab errori
fi
done <"$file"
