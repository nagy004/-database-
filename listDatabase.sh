#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$

cd ~/database

vsr=($(ls -F | grep / | wc -l))
if [[ $vsr = 0 ]]; then
clear
 echo "you dont have any data bases"
 echo "this is the main menu"
 menu
else 
clear
echo "|==================================================|"
echo "           this is the Data Bases that you have "
echo "|==================================================|"
ls -F | grep / 


read -p "enter the data base name that U want to connect :" x
regex='^[0-9a-zA-Z]+$'
if [[ $x =~ ^[0-9a-zA-Z]+$ ]]; then
if [[ -d $x ]];
  then  cd ~/database/$x
  fno=($(ls -F | wc -l))
  #ls -F | grep "*" | wc -l
  
#if no.files =0---------

if [[ $fno = 0 ]]; then
clear
 echo "this DB is empty"
 select h in "Create Table" "Exit"
          do 
             case $h in

               "Create Table" )
     . CreatTable.sh 
                     ;;
                        "Exit" )
                        clear
                        echo "this is the main menu"
                         menu
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

ls -F

fi
else echo "this DB is not exit "
echo "not exist"
clear
echo " this is the main menu "
menu
                       fi
                               
            else
            echo "not valid"
            clear
           echo " this is the main menu "
menu
            fi

fi

