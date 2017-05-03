#!/bin/bash
# 
RED='\033[0;31m'
NC='\033[0m'
echo -e "${RED}            ____ _   _ _____    _____         _               ___   _ 
           / ___| | | | ____|  |_   _|__  ___| |_ ___ _ __   / _ \ / |
          | |  _| |_| |  _| _____| |/ _ \/ __| __/ _ \ '__| | | | || |
          | |_| |  _  | |__|_____| |  __/\__ \ ||  __/ |    | |_| || |
           \____|_| |_|_____|    |_|\___||___/\__\___|_|     \___(_)_|
                                                                      
${NC}"

backup (){
    
    # getTime
    
    time=`date +"%m-%d-%y(%I-%M-%p)"`
    # echo $time
    read -p "Backup file name: [backup-$time] " bname
    if [ "$bname" = "" ]; then
        bname=backup-$time;
    fi

    if [ ! -d backups ]; then
    mkdir backups
    fi
        tar -czvf backups/$bname.tar.gz cms mysql config docker-compose.yaml docker-compose-UCI.yaml

}

restore (){

    echo "Please select the backup file from the list "
    files=$(ls backups/*.tar.gz)
    i=1
    for j in $files
    do
        echo "$i -> $j"
        file[i]=$j
        i=$(( i + 1 ))
    done
    echo "Enter number"
    read input
    echo "You select the file ${file[$input]}"
    borrar
    tar -xvzf ${file[$input]} 

}

borrar(){
    rm -R cms mysql
}

menu (){

echo "Make Backup or Restore GHE-Tester data?"
select yn in "Backup" "Restore"; do
    case $yn in
        Backup ) backup ;  break;;
        Restore ) restore ; exit;;
    esac
done


}
if [ "$(whoami)" != "root" ];
  then echo -e "${RED}Please run as root!!!${NC}"

  else (menu)
fi
exit
