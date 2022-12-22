#!/usr/bin/bash
#echo "hello nagy"
#cnm=($(head -"$2" "$1" ~/database/$x/$Tname | awk -F':' '{ print $i }'))


read -p "enter the Table name that U want to Slect from :" xyz
regex='^[0-9a-zA-Z]+$'
echo "this is Table  ( $xyz ) colume "
head -2 ~/database/$x/$xyz
if [[ $xyz==$regex ]]; then
   if [[ -f $xyz ]];
   then
      read -p "enter the colume number that U want to Slect from :" i
     awk '{if (NR==2 || NR>4) print NR":" $0 }' ~/database/$x/$xyz | cut –d ‘:’ –f$i

				
     else 
     
     echo "this Table name ( $xyz ) is not exist "
     break
     fi
else
  echo " invalid choice , try again " 
    menu
 fi 
