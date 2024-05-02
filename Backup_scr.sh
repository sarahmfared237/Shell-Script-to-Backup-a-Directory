Source_Directory=$1
Backup_Directory=$2
Interval_in_secs=$3
Max_Backups=$4

while true
do
  ls -Rl "$Source_Directory" > current_state.txt
  change=$(diff current_state.txt last_state.txt | wc -l)

  
  if [ $change == "0" ]; then
    echo "NOT Changed"
  else 
    echo "Changed"
    new_Dir=$(date +'%Y-%m-%d---%H-%M-%S')
    
    first_backup=$(ls -tr "$Backup_Directory" | head -1)
    if [ "$(ls -l "$Backup_Directory" | grep -c ^d)" -eq "$Max_Backups" ]; then 
      rm -r "$Backup_Directory/$first_backup"
      echo "First Backup: $first_backup is deleted"
    fi
    
    mkdir "$Backup_Directory/$new_Dir"
    cp -r "$Source_Directory/" "$Backup_Directory/$new_Dir/"
    cat current_state.txt > last_state.txt
    
   fi
   
   sleep "$Interval_in_secs"
done
     
