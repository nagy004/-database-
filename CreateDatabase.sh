
#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$
function create (){
clear
echo "Enter the DB name that U want to create without any spaces"
echo "(you can use  " _ " instead of space )"
read  dbname

if [[ $dbname =~ ^[0-9a-zA-Z]+$ ]]; then
  if [[ -d $dbname ]];
  then echo "this DB ( $dbname ) is alraedy exist "
  
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
    
    echo " you choosed wrong this is the main menu "
    menu
    ;;
esac
    done
  else 
  mkdir ~/database/$dbname
  clear
  echo "your new ( $dbname ) data base is created"
 echo " this is the main menu "
menu
  
  fi
else echo " Not valid input "
echo " this is the main menu "
menu
   
fi

}


