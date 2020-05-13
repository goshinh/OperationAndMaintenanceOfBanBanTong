#!/bin/bash

directory="~/IGithub/OperationAndMaintenanceOfBanBanTong"
t_encoding="UTF-8"
f_encoding="GBK"

for dir in 'ls $directory'
do
   if [ -d $directory/$dir ]
   then
         for file in 'ls $directory/$dir'
         do
             if [ -e $directory/$dir/$file ]
             then

                   iconv $file -f f_encodingi -t t_encoding -o $file
             fi
         done
    fi
done
 
