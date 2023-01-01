#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$
#cnm=($(head -"$2" "$1" ~/database/$x/$Tname | awk -F':' '{ print $i }'))

cd ~/database/1
read -p "enter the Table name that U want to list :" xy

if [[ $xy =~ ^[0-9a-zA-Z]+$ ]]; then
   if [[ -f $xy ]]; then 
   clear
   echo "this is the Table ( $xy ) Data "
    awk '{if (NR==2 || NR>3) print $0 }' ~/database/$x/$xy
     else 
     
     echo "this Table name ( $xy ) is not exist "
     
     fi
else
  echo " invalid choice , try again " 
    menu
 fi 
