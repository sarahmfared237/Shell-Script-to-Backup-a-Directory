Source_Directory=$(1)
Backup_Directory=$(2)
Max_Backups=$(4)

.PHONY: Backup
Backup:
	mkdir -p $(Backup_Directory)
	bash Backup_scr.sh "$(Source_Directory)" "$(Backup_Directory)" "$(Max_Backups)"

