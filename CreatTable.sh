#!/usr/bin/bash
regex='^[0-9a-zA-Z]+$'
regInt='^[0-9]+$'
regStr='^[a-zA-Z]+$'
function createTable (){
clear
echo "Enter the Table name that U want to create without any spaces"
echo "(you can use  " _ " instead of space )"
read  Tname


if [[ $Tname==$regex ]]; then

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
else echo " invalid syntax "
  menu 
fi

}

createTable 

: '
#checking no of column------------


	        read -p "Enter num of columns for your table : " CNum
		
		if [[ $CNum==$regInt ]]; then
       for (( i = 0; i < CNum; i++ )); do
       
		     read -p "Enter the( $i+1 ) columne Name : " CName
		     #echo "($CName) : " >> ~/database/$x/$Tname
		     #check for data type ------------------------------------------------------------
		     
		     		     echo "choose the( $CName ) Data Type : "  
		     
		     select DT in "Integer" "String" 
                       do 
                           case $DT in

                           "Integer" )
                           echo " Integer : " >> ~/database/$x/$Tname
                           
                            
                                      ;;

                            "String" )
                            echo " String : " >> ~/database/$x/$Tname
                             
                                       ;;

                                     *)
    
                            echo " you choosed wrong this is the main menu "
                            break
                                     ;;
                                     esac
                                     done
                                     
		    # echo "($CType) : " >> ~/database/$dbname/$Tname
		     
		     #check for PK-------------------------------------------
		     echo "choose if the( $CName ) is Primary Key or not : "  
		     
		     select IsPK in "yes" "no" 
                       do 
                           case $IsPK in

                           "no" )
                           echo " 0 : " >> ~/database/$x/$Tname
                           
                            
                                      ;;

                            "yes" )
                            echo " pk : " >> ~/database/$x/$Tname
                             
                                       ;;

                                     *)
    
                            echo " you choosed wrong this is the main menu "
                            break
                                     ;;
                                     esac
                                     done
                                     
                                     echo " $CName : " >> ~/database/$x/$Tname
                                     
		   
		     
		     
		   	  done
		   	  break
		   	 
			else
			echo "error! enter a number :" 
		fi  
		'
		
		
		#-----------------------------------------------------------------------------------------------------------------------------------------
		read -p "Enter num of columns for your table : " CNum
		if [[ $CNum==$regInt ]]; then
                   for (( i = 1; i <= CNum; i++ )); do
                         #check for colume name ------------------------------------------------------------
		     read -p "Enter the( $i ) columne Name : " CName
		     echo -n " $CName : " >> ~/database/$x/$Tname
		       done
		       
		       echo " " >> ~/database/$x/$Tname
		       
		   	  #check for data type ------------------------------------------------------------
		   	 
		   	 for (( i = 1; i <= CNum; i++ )); do
       
		    		    echo "Enter the( $i ) colume Data Type  "
                                    echo  'note ===>> You can choose only between ( {int} for==>>integer or {str} for==>>string )'
                                   read  CType
                                   if [[ $CType==$regStr ]] && [[ $CType=="str" ]] ; then
                                     echo -n " $CType : " >> ~/database/$x/$Tname
                                    elif [[ $CType==$regStr ]] && [[ $CType=="int" ]] ; then
                                      echo -n " $CType : " >> ~/database/$x/$Tname
                                      else
                                      echo " you choosed wrong , kindly choose int or str "
                                      break
                                     fi
                            done 
                            
                            echo " " >> ~/database/$x/$Tname
                            
                             for (( i = 1; i <= CNum; i++; )) do
       
		    		      echo "choose if the( $i ) colume is Primary Key ( yes/no ) "
                             read  PKcheck
                             if [[ $PKcheck==$regStr ]] && [[ $PKcheck=="no" ]] ; then
                                     echo -n " :" >> ~/database/$x/$Tname
                                    elif [[ $PKcheck==$regStr ]] && [[ $PKcheck=="yes" ]] ; then
                                      echo -n " pk : " >> ~/database/$x/$Tname
                                      else
                                      echo " you choosed wrong , kindly choose yes or no "
                                      break
                                     fi
                            done 
                            
                            
                          else
			echo "error! enter a number :" 
		fi 
		    
		    #check for pk ------------------------------------------------------------
                   
                            
                            
                            
                            
		    
