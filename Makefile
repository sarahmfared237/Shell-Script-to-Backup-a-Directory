Source_Directory=$(1)
Backup_Directory=$(2)
Interval_in_secs=$(3)
Max_Backups=$(4)

.PHONY: Backup
Backup:
	mkdir -p $(Backup_Directory)
	bash Backup_scr.sh "$(Source_Directory)" "$(Backup_Directory)" "$(Interval_in_secs)" "$(Max_Backups)"

