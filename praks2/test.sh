#!/bin/bash
file="/home/user/rsha/praks2/kasutajad.paroolid.txt" #defineerib mis failist lugeda
while IFS=":" read -r line kasutaja parool #loeb üks rida korraga
do #loop, mis käivitub iga rea kohta
echo  $kasutaja
echo  $parool
done <"$file"
