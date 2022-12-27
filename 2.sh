#!/usr/bin/bash
shopt -s extglob
#$intiger_regex     =~ ^[0-9]+$
#all_regex          =~ ^[0-9a-zA-Z]+$
#$charctar_regex    =~ ^[a-zA-Z]+$
#cnm=($(awk '/rawan/ {print}' ~/database/1/users))



       



#no_of_col=($(awk '{print NF}' ~/database/1/users | sort -nu | tail -n 1))
#echo "$no_of_col"
no_of_col=($(head -n 1 ~/database/1/users | awk -F ":" '{print NF}'))

		     
                         for (( i = 2; i < no_of_col ; i++ )); do
		     read -p "Enter the( $i ) columne Name : " Cname
		    # if [[ $Cname =~ ^[0-9a-zA-Z]+$ ]]; then
		     echo -n "$Cname : " >> ~/database/1/users
		       
		     
		       
		       done
#echo "$no_of_col"










