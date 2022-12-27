#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$
#cnm=($(awk '/rawan/ {print}' ~/database/1/users))



if [[ $tname =~ ^[0-9a-zA-Z]+$ ]]; then


  #if [[ -f $tname ]]; then 


read -p "enter the first column value ( this is the PK column ) :" cv
if [[ $cv =~ ^[0-9a-zA-Z]+$ ]]; then
pk_check=($(awk -F ":" '{if (NR==2 || NR>3) print $1 }' ~/database/1/$tname | grep -w $cv | wc -l))
echo " " >> ~/database/$x/$tname
if [[ $pk_check == 0 ]]; then 
echo -n "  $cv  : " >> ~/database/$x/$tname
   for (( i = 2; i < no_of_col ; i++ )); do
		     read -p "Enter the( $i ) columne Name : " Cname

		     echo -n "$Cname : " >> ~/database/$x/$tname
		     
		       done
echo "done "

else
echo "This column is  (Primary Key ) so you cannot enter the same value twice "
fi

#else
#echo "This Table "$tname" is not exist "
#fi
else
echo "invalid input  "
fi

else
echo "invalid input  "
fi


no_of_col=($(head -n 1 ~/database/$x/$tname | awk -F ":" '{print NF}'))

		     
                    




