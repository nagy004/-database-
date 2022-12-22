#!/usr/bin/bash
shopt -s extglob
#echo "hello ahmed nagy"

#. functions.sh

if [ ! -d $HOME/database ];
then
echo "i will create data base"
mkdir $HOME/database 
cd $HOME/database
else 
clear
echo "|==================================================|"
echo "       now you are connected to DBMS "
echo "|==================================================|"
cd $HOME/database
fi

PS3="Enter the number of your choice :"

 function menu(){
select i in "Create Database" "List Database" "Connect Database" "Drop Database" "Exit" 
do 
case $i in

 "Create Database" )
    
    . CreateDatabase.sh
      create
    
    ;;

"List Database" )
   
     . listDatabase.sh
    break
    ;;
  "Connect Database" )
     
    . ConnectDatabase.sh
    break
    ;;
    "Drop Database" )
       
    . DropDatabase.sh
      drop
    break
    ;;
"Exit" )

    exit ;;
  * )
  clear
    echo " invalid choice , try again " 
    menu
    ;;
esac



done }
menu
