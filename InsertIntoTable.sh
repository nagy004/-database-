#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$
#cnm=($(awk '/rawan/ {print}' ~/database/1/users))



       



#no_of_col=($(awk '{print NF}' ~/database/1/users | sort -nu | tail -n 1))
#echo "$no_of_col"

: '
no_of_col=($(head -n 1 ~/database/1/users | awk -F ":" '{print NF}'))

		     
                         for (( i = 2; i < no_of_col ; i++ )); do
		     read -p "Enter the( $i ) columne Name : " Cname
		    # if [[ $Cname =~ ^[0-9a-zA-Z]+$ ]]; then
		     echo -n "$Cname : " >> ~/database/1/users
		       
		     
		       
		       done '
#echo "$no_of_col"



 #   awk '{if (NR==2 || NR>3) print $0 }' ~/database/nagy/devops



#read -p "enter the first column value ( this is the PK column ) :" cv
#pk_check=($(awk -F ":" '{if (NR==2 || NR>3) print $1 }' ~/database/1/users | grep -w $cv | wc -l))
#echo "$pk_check"



read -p "enter the table name that u want insert into ) :" tname
cd ~/database/$x

if [[ $tname =~ ^[0-9a-zA-Z]+$ ]] && [[ -f $tname ]]; then


read -p "enter the first column value ( this is the PK column ) :" cv
if [[ $cv =~ ^[0-9a-zA-Z]+$ ]]; then
pk_check=($(awk -F ":" '{if (NR==2 || NR>3) print $1 }' ~/database/$x/$tname | grep -w $cv | wc -l))

if [[ $pk_check == 0 ]]; then 
echo " " >> ~/database/$x/$tname
echo -n "  $cv  : " >> ~/database/$x/$tname
   no_of_col=($(head -n 1 ~/database/$x/$tname | awk -F ":" '{print NF}'))
   for (( i = 2; i < no_of_col ; i++ )); do
		     read -p "Enter the( $i ) columne value (you can enter only int or str : " Cname
                     if [[ $Cname =~ ^[0-9a-zA-Z]+$ ]]; then
                     
		     echo -n "$Cname : " >> ~/database/$x/$tname
		     else
echo "invalid sentax "
break
fi
		       done
echo "done "

else
echo "This column is  (Primary Key ) so you cannot enter the same value twice "
fi
	else
echo "invalid sentax "
fi

	else
echo "invalid sentax or table name "
fi
