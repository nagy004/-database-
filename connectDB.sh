#!/usr/bin/bash
#echo "hello nagy"

cd ~/database

#fno=($(ls -F | grep "*" | wc -l))
: '
echo $fno

regex='^[0-9a-zA-Z]+$'

clear
read -p "enter the data base name that U want to connect :" dbnamec
if [[ $dbnamec==$regex ]]; then
  if [[ -d $dbnamec ]];
  then  cd ~/database/$dbnamec
  fno=($(ls -F | grep "*" | wc -l))
  pwd
if [[ $fno == 0 ]]; then

 echo "this DB is empty"
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
                              else 
                              echo " this is ($dbnamec) content :"
                              ls -F | grep "*" 
                      echo " do you want to  :"
                        fi
                     else echo " not exist"
                       fi
                  else echo " not exist"
                   fi
                   '
                   
#        vsr=($(ls -F | grep / | wc -l))

read -p "enter the data base name that U want to connect :" x
regex='^[0-9a-zA-Z]+$'
if [[ $dbnamec==$regex ]]; then
if [[ -d $x ]];
  then  cd ~/database/$x
  fno=($(ls -F | grep "*" | wc -l))
  ls -F | grep "*" | wc -l
  
#if no.files =0---------

if [[ $fno = 0 ]]; then
clear
 echo "this DB is empty"
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
   #if no.files !=0--------               
else 
clear
echo "this is the DB ($x) content "

ls -F | grep "*"
echo "what do you want to do "

#this is the second menu---------
  select y in "Create Table" "List Table" "Insert into Table" "Select From Table" "Delete From Table" "update Table" 
do 
case $y in

 "Create Table" )
   echo "welcome to creat table " 
    #. CreateTable.sh
      
    break
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

#---------------------------------
fi
else echo "this DB is not exit "
                       fi
                               
            else
            echo "not valid"
            fi
