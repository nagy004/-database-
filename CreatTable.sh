#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$

function createTable (){
clear
echo "Enter the Table name that U want to create without any spaces"
echo "(you can use  " _ " instead of space )"
read  Tname


if [[ $Tname =~ ^[0-9a-zA-Z]+$ ]]; then

#after checking the syntax we will check if it is exist or not -----------------------------------

  if [[ -f $Tname ]]; then 
  echo "this Table name ( $Tname ) is alraedy exist "
  
  select t in "re-enter the Table name " "exit" 
do 
case $t in

  "re-enter the Table name " )
        clear
    createTable
    ;;

  "exit" )
  clear 
  echo "This is the main menu"
  menu
    ;;

  *)
    
    echo " you choosed wrong this is the main menu "
   
    ;;
esac
    done
    #if Taable is no exist we will creat a new one ----------------------------------
  else 
  touch ~/database/$x/$Tname
  clear
  echo "your new ( $Tname ) Table is created"
  
  
  
  
  fi
else echo " invalid sentax "
  menu 
fi

}

createTable 


	function createt (){	
		
		#-----------------------------------------------------------------------------------------------------------------------------------------
		read -p "Enter num of columns for your table : " CNum
		if [[ $CNum =~ ^[0-9]+$ ]]; then
                   for (( i = 1; i <= CNum; i++ )); do
                      echo -n "  $i  : " >> ~/database/$x/$Tname
                      done 
                      echo " " >> ~/database/$x/$Tname
                         #check for colume name ------------------------------------------------------------
                         
                         read -p 'Enter the( first ) colume Name " be noted that this colume will be the Primary Key" : ' CName
		     echo -n "$CName : " >> ~/database/$x/$Tname
		     
                         for (( i = 2; i <= CNum; i++ )); do
		     read -p "Enter the( $i ) columne Name : " CName
		     echo -n "$CName : " >> ~/database/$x/$Tname
		       done
		       
		       echo " " >> ~/database/$x/$Tname
		       
		   	  #check for data type ------------------------------------------------------------
		   	
       
		    		
		    for (( i = 1; i <= CNum; i++ )); do 
		    #  cnm=($(head -2 ~/database/$x/$Tname | awk -F':' '{ print $"'$i'" }')) ---------------------------------variable not working
		    
                               echo "Enter the( $i ) colume Data Type  "
                                 select CType in "str" "int"
                                  do
                                  case $CType in
                                  "str" ) 
                                  echo -n " str : " >> ~/database/$x/$Tname
          
                                   break;;
                                   "int" )
                                    echo -n " int : " >> ~/database/$x/$Tname
                                   break;;
                                       * ) echo "Wrong Choice" ;;
                                       
                                    esac
                                 done
                            done
                            
                              else echo " you entered invalid syntax "
                              break
                          
                          fi
                          clear
                          
                          echo  "this is the main Menu "
		    		menu
		    		}
		    		
		    		createt
                            
                            #-checling pk------------------------------------------------------------------------------------
                         
                          
              
		    
