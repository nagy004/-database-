#!/usr/bin/bash
#echo "hello ahmed nagy"

#. functions.sh
if [ ! -d $HOME/database ];
then
echo "i will create data base"
mkdir $HOME/database 
else 
echo " now you are connected to data base"
cd $HOME/database
fi
PS3="Enter your choice :"

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
     echo "welcome to connect "
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
    echo " invalid choice , try again " 
    menu
    ;;
esac



done }
menu
