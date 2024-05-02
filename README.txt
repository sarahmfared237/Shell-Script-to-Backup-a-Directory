# Overview

The project is a tool that monitors a source directory and creates backups whenever changes are detected. It helps to preserve the state of the source directory and maintain a specified number of backups.

# Backup Script (Backup_scr.sh)

The backup script is designed to monitor a specified source directory for changes and create backups whenever changes are detected. It helps preserve the state of the source directory and maintains a specified number of backups.

The script operates in an infinite loop, continuously monitoring the source directory for changes. It compares the current state of the source directory with the previous state to determine if any changes have occurred.

If no changes are detected, the script outputs "NOT Changed" to indicate that the source directory remains unchanged. However, if changes are detected, the script performs the following actions:

    Creates a new directory with a timestamp in the backup directory to store the backup.
    Checks the number of existing backups in the backup directory.
    If the number of backups exceeds the specified maximum, it removes the oldest backup to make room for the new one.
    Copies the content of the source directory to the newly created backup directory.
    Updates the last known state of the source directory for future comparisons.

The script uses the ls command to generate a file listing of the source directory and stores it in current_state.txt. It then compares this file with last_state.txt to determine if any changes have occurred.

The script requires four parameters to run: Source_Directory, Backup_Directory, Interval_in_secs, and Max_Backups. These parameters can be passed as command line arguments when executing the script


## Installation

There installation required for the backup script. ensure that you have the following prerequisites:

- Bash shell environment
- install make command **sudo apt install make**


## Usage

To use the backup script, follow these steps:

1. Open a terminal.
2. Navigate to the directory where the backup script is located.
3. Run the following command:

   ```shell
   bash backup_scr.sh <Source_Directory> <Backup_Directory> <Interval_in_secs> <Max_Backups>
   
Replace <Source_Directory> with the path to the directory you want to monitor for changes.
Replace <Backup_Directory> with the path to the directory where you want to store the backups.
Replace <Interval_in_secs> with the interval (in seconds) at which the script should check for changes.
Replace <Max_Backups> with the maximum number of backups you want to retain.

4. The script will start monitoring the source directory and create backups whenever changes are detected.
    
**Configuration**

The backup script supports the following configuration options:

    Source_Directory: The directory to monitor for changes.
    Backup_Directory: The directory where backups will be stored.
    Interval_in_secs: The time interval (in seconds) at which the script checks for changes.
    Max_Backups: The maximum number of backups to retain. If the number of backups exceeds this limit, the oldest backup will be deleted.

You can modify these options by updating the corresponding variables in the script.

**File Structure**

The backup script expects the following file structure:

    <Source_Directory>: The directory to monitor for changes.
    <Backup_Directory>: The directory where backups will be stored.

Ensure that the source and backup directories exist before running the script.

**Troubleshooting**

    If the script is not working as expected, ensure that you have provided the correct paths for the source and backup directories.
    Check the permissions of the directories and files involved. The script requires appropriate read and write permissions.

