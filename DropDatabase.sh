#!/usr/bin/bash
#echo "hello nagy"
regex='^[0-9a-zA-Z]+$'
function drop(){
clear
read -p "enter DB name that U want to drop :" dbnamed
if [[ $dbnamed==$regex ]]; then
  if [[ -d $dbnamed ]];
  then 
  rm -r ~/database/$dbnamed
  clear
  echo " DB ( $dbnamed ) is deleted "
  
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
  echo " this is the main menu "
  menu
    ;;

  *)
    clear
    echo " you choosed wrong this is the main menu"
    menu
    ;;
esac
    done
  fi

else echo " kindly enter the right DB name  "
   
fi
}



