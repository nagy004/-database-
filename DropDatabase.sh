#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$
function drop(){
clear
read -p "enter DB name that U want to drop :" dbnamed
if [[ $dbnamed =~ ^[0-9a-zA-Z]+$ ]]; then
  if [[ -d $dbnamed ]];
  then 
  rm -r ~/database/$dbnamed
  clear
  echo " DB ( $dbnamed ) is deleted "
  
    echo "|==================================================|"
  echo "            this is the main menu "
  echo "|==================================================|"
  
  menu
  else 
  echo "This database is not exit"
    select x in "re-enter the DB name" "exit" 
do 
case $x in

  "re-enter the DB name" )
        clear
    drop
    ;;

  "exit" )
  clear 
  echo "|==================================================|"
  echo "            this is the main menu "
  echo "|==================================================|"
  menu
    ;;

  *)
    clear
    echo "|==================================================|"
    echo "    you choosed wrong this is the main menu"
    echo "|==================================================|"
    menu
    ;;
esac
    done
  fi

else echo " Kindly enter the right DB name  "
menu
   
fi
}



