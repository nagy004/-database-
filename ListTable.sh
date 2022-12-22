#!/usr/bin/bash
#echo "hello nagy"
#cnm=($(head -"$2" "$1" ~/database/$x/$Tname | awk -F':' '{ print $i }'))


read -p "enter the Table name that U want to list :" xy
regex='^[0-9a-zA-Z]+$'
if [[ $xy==$regex ]]; then
   if [[ -f $xy ]];
     then  awk '{if (NR==2 || NR>4) print NR":" $0 }' ~/database/$x/$xy
     else 
     
     echo "this Table name ( $xy ) is not exist "
     break
     fi
else
  echo " invalid choice , try again " 
    menu
 fi 
