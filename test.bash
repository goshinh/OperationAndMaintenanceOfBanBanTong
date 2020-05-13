#!/bin/bash

#1.变量定义
directory="/home/l750/IGithub/OperationAndMaintenanceOfBanBanTong"
f_encoding="GBK"
t_encoding="UTF-8"

#2.遍历子目录
for dir in `ls $directory`
do
	if [ -d $directory/$dir ]
	then
		#3.遍历子目录的文件
		for file in `ls $directory/$dir`
		do
			if [ -e $directory/$dir/$file ]
			then
				#4.文件类型转换
				iconv -f $f_encoding -t $t_encoding $directory/$dir/$file -o $directory/$dir/$file
			fi
		done
	fi
done
