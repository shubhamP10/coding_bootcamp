#! /bin/bash

declare -A dict
i=1;
oneCount=0; twoCount=0; threeCount=0; fourCount=0; fiveCount=0; sixCount=0;
while((i>0))
do

	dice=$((RANDOM%7));
	#dict[$i]=$dice;
	case $dice in
	1)
		dict[onecount$i]=$dice;
		oneCount=$((oneCount+1));;
	2)
		dict[twocount$i]=$dice;
		twoCount=$((twoCount+1));;
	3)
		dict[threecount$i]=$dice;
		threeCount=$((threeCount+1));;
	4)
		dict[fourcount$i]=$dice;
		fourCount=$((fourCount+1));;
	5)
		dict[fivecount$i]=$dice;
		fiveCount=$((fiveCount+1));;
	6)
		dict[sixcount$i]=$dice;
		sixCount=$((sixCount+1));;
	esac
	if [[ $oneCount -eq 10 || $twoCount -eq 10 || $threeCount -eq 10 || $fourCount -eq 10 || $fiveCount -eq 10 || $sixCount -eq 10 ]]
	then
		break
	fi
	echo $dice;
	i=$((i+1));

done
echo ${dict[@]}
arr=($oneCount $twoCount $threeCount $fourCount $fiveCount $sixCount);
echo ${arr[@]}
