#!/usr/bin/bash
echo "hello nagy"

fno=($(ls -F | grep "*" | wc -l))
regex='^[0-9a-zA-Z]+$'

clear
read -p "enter the data base name that U want to connect :" dbnamec
if [[ $dbnamec==$regex ]]; then
  if [[ -d $dbnamec ]];
  then  cd ~/database/$dbnamec
      if [ $fno == 0 ];
     then echo " this DB ( $dbnamec ) is empty "
  
        select h in "Create Table"
          do 
             case $h in

               "Create Table" )
                 echo "welcome to creat table " 
                 #. CreateTable.sh
                     ;;
                    * )
                        echo "wrong choice " 
                          break
                            ;;
                               esac
                                 done
  
  
  #if fno doesnt equal to 0
  else
  select y in "Create Table" "List Table" "Insert into Table" "Select From Table" "Delete From Table" "update Table" 
do 
case $y in

 "Create Table" )
   echo "welcome to creat table " 
    #. CreateTable.sh
      
    
    ;;

"List Table" )
   echo "welcome to list table "
    # . listDatabase.sh
    break
    ;;
    
  "Insert into Table" )
     echo "welcome to insert table "
    #. ./ConnectDatabase.sh
    break
    ;;
    "Select From Table" )
      echo "welcome to insert table " 
   # . DropDatabase.sh
      
    break
    ;;
"Select From Table" )
echo "welcome to select table " 
break
    ;;
    "Delete From Table" )
echo "welcome to Delete From Table" 
break
    ;;
    
        "update Table" )
echo "welcome to update Table" 
break
    ;;
  * )
    echo " invalid choice , try again " 
    break
    ;;
esac

done 
fi
else echo " this DB ( $dbnamec ) is not exist "
break
fi
