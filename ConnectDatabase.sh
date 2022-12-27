
#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$
cd ~/database

#fno=($(ls -F | grep "*" | wc -l))

#        vsr=($(ls -F | grep / | wc -l))

read -p "enter the data base name that U want to connect :" x
#regex =~ ^[0-9a-zA-Z]+$
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
echo "what do you want to do "

#this is the second menu---------
  select y in "Create Table" "List Table" "Insert into Table" "Select From Table" "Delete From Table" "update Table" "Exit"
do 
case $y in

 "Create Table" )
   #echo "welcome to creat table " 
    . CreatTable.sh
      
    break
    ;;

"List Table" )
  . ListTable.sh
    break
    ;;
    
  "Insert into Table" )
     echo "welcome to insert table "
    . InsertIntoTable.sh
    break
    ;;
    "Select From Table" )
      echo "welcome to select table " 
  . 1seltable.sh
      
    break
    ;;
"Sdet From Table" )
echo "welcome to select table " 
 #. Select From Table
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
    
    "Exit" )
    clear
echo "this is the main menu" 
menu
    ;;
    
  * )
    echo " invalid choice , try again " 
    break
    ;;
esac

done 

#---------------------------------
fi
clear
else echo "this DB is not exit "
echo " this is the main menu "
menu
                       fi
                               
            else
            clear
            echo "not valid input"
            echo " this is the main menu "
            menu
            fi
