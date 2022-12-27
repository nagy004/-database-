#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$


 read -p "enter the Table name that U want to Select from :" xyz
regex='^[0-9a-zA-Z]+$'
if [[ $xyz =~ ^[0-9a-zA-Z]+$ ]]; then


  if [[ -f $xyz ]]; then 



echo "you want to select by column or by row:" 
select opt in  "column" "row"; do

  case $opt in 
    "column")
 #if he choosed by column----------------------------------------------------------------------

echo "this is Table  ( $xyz ) columns "
head -2 ~/database/$x/$xyz
read -p "Enter the column ( NUMBER ) that U want to Select :" ix



      if [[ $ix =~ ^[0-9]+$ ]];
          
   then
     awk '{if (NR==2 || NR>4) print $0 }' ~/database/1/users |cut -d":" -f $ix

				
else 
clear
echo "sorry you can enter only the column ( NUMBER )"
echo "you can connect to data base  again"
    . ConnectDatabase.sh

fi 
    
    
      ;;
    "row")
     #if he choosed by row-------------------------------------------------------------------
    
    echo "do you want to use one or two or three conditions with selection"
select noc in "one" "two" "three"; do

  case $noc in
    "one" )
     #if he choose 1 conditions -----------------------------------------------------
read -p "enter the column name  :" c
if [[ $c =~ ^[0-9a-zA-Z]+$ ]]; then

read -p "enter the "$c" condition  :" ocond
if [[ $ocond =~ ^[0-9a-zA-Z]+$ ]]; then
clear
echo "this is your selection result "
 cat ~/database/$x/$xyz | grep -w $ocond
 break
 else 
echo "invailid input for the condition "
break
fi 
else 
echo "invailid input for the column name"
break
fi 
      ;;
      #if he choose 2 conditions -----------------------------------------------------
    "two" )
    read -p "enter the column name for the first conditioin :" v
    
    if [[ $v =~ ^[0-9a-zA-Z]+$ ]]; then
     read -p "enter the column name for the second conditioin :" g
     
     
      if [[ $v =~ ^[0-9a-zA-Z]+$ ]]; then
read -p "enter the "$v" condition   :" con1
if [[ $con1 =~ ^[0-9a-zA-Z]+$ ]]; then

read -p "enter the "$g" condition  :" con2
if [[ $con2 =~ ^[0-9a-zA-Z]+$ ]]; then
clear
echo "this is your selection result "
cat ~/database/$x/$xyz | grep -w $con1 | grep -w $con2

 else 
echo "invailid input for the condition "
break
fi
 else 
echo "invailid input for the condition "
break
fi
else 
echo "invailid input for the column name"
echo "choose again from the main menu"
menu

fi 

else 
echo "invailid input for the column name"
echo "choose again from the main menu"
menu

fi 

   
      ;;
      "three" )
        #if he choose 3 conditions -----------------------------------------------------
 read -p "enter the column name for first condition  :" v
  if [[ $v =~ ^[0-9a-zA-Z]+$ ]]; then
  
       read -p "enter the column name for the second conditioin :" g
       if [[ $g =~ ^[0-9a-zA-Z]+$ ]]; then
            read -p "enter the column name for the third conditioin :" m
             if [[ $m =~ ^[0-9a-zA-Z]+$ ]]; then
    read -p "enter the "$v " condition :" co1


if [[ $co1 =~ ^[0-9a-zA-Z]+$ ]]; then

read -p "enter the " $g " condition :" co2
if [[ $co2 =~ ^[0-9a-zA-Z]+$ ]]; then

read -p "enter the " $m " condition :" co3
if [[ $co3 =~ ^[0-9a-zA-Z]+$ ]]; then
clear
echo "this is your selection result "
cat ~/database/$x/$xyz | grep -w $co1 | grep -w $co2 | grep -w $co3

 else 
echo "invailid input for the condition "
break
fi

 else 
echo "invailid input for the condition "
break
fi

 else 
echo "invailid input for the condition "
break
fi

else 
echo "invailid input for the column name"
echo "choose again from the main menu"
menu
fi 
  
  else 
echo "invailid input for the column name"
echo "choose again from the main menu"
menu
fi 
  
  else 
echo "invailid input for the column name"
echo "choose again from the main menu"
menu
fi 



      ;;
    *) 
      echo "Invalid option "
      ;;
  esac
done 
     ;;
    *) 
      echo "Invalid option ";;
  esac
done


else 
echo "this is table "$xyz" is not exist"
break
fi 
else 
echo "invailid syntax"
fi 


