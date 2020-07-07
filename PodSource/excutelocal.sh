#/bin/sh

requesetpermission(){



	echo "reqeuestpermisson" `pwd`

	res=$(askuserpermission)
	if [${res} -eq 0 ]; then
		echo "excute pod parser!!!!!!!!!!!!"

	else

		return 1

	fi
	
	return 0
}

askuserpermission(){

	read -r -p "需要把本次提交记录同时加入到本地修改其他库吗？ [Y/n] " input

	case $input in
    		[yY][eE][sS]|[yY])
			return 1
			;;

    		[nN][oO]|[nN])
    			return 0
       			;;

    		*)
			echo "Invalid input..."
			return 0
			;;
	esac

	return 0
}

excutesingpod(){

	podinfo=$1

	OLD_IFS="$IFS"
	IFS="|"
	arr=($podinfo)
	IFS="$OLD_IFS"

	
	for s in ${aar[@]}
	do
		echo "$s"
	done

}
