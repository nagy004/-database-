#!/usr/bin/bash
#echo "hello nagy"
regex='^[0-9a-zA-Z]+$'
function create (){
clear
read -p "enter the data base name that U want to create :" dbname
if [[ $dbname==$regex ]]; then
  if [[ -d $dbname ]];
  then echo "this data base is alraedy exist "
  
  select x in "re-enter the DB name" "exit" 
do 
case $x in

  "re-enter the DB name" )
        clear
    create
    ;;

  "exit" )
  clear 
  echo "this is the main menu"
  menu
    ;;

  *)
    
    echo " you choosed wrong is the main menu "
    menu
    ;;
esac
    done
  else 
  mkdir ~/database/$dbname
  clear
  echo "your new ( $dbname ) data base is alraedy created"
  menu
  
  fi
else echo " kindly use numbers , chrachters & specialcharacters only "
   
fi

}


