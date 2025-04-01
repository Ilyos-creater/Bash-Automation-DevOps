# MySQL Database Backup Script

This Bash script automates the process of backing up all MySQL databases (excluding system databases) into timestamped, compressed files.

---

## Backup Location

Backups are saved in:

```
/tmp/backup/<YYYY-MM-DD>/
```

Each database is saved as a separate `.gz` file.

---

## Script Contents

```bash
#!/bin/bash

TIMESTAMP=$( date +%F )
BACKUP_DIR="/tmp/backup/$TIMESTAMP"
mkdir -p $BACKUP_DIR

databases=$(mysql --login-path=local -Bse "SHOW DATABASES" | grep -Ev "(information_schema|performance_schema)")

for db in $databases
do
    mysqldump --login-path=local $db | gzip > "$BACKUP_DIR/$db.gz"
    echo "Backup is created for $db"
done
```

---

## Prerequisites

- MySQL client tools installed
- MySQL login path configured using `mysql_config_editor`:

```bash
mysql_config_editor set --login-path=local --host=localhost --user=<username> --password
```

---

## What the Script Does

1. Gets the current date and creates a backup folder with that date.
2. Lists all databases, excluding:
   - `information_schema`
   - `performance_schema`
3. Iterates over each database:
   - Dumps it using `mysqldump`
   - Compresses it using `gzip`
   - Saves it as `<db_name>.gz` in the backup directory
4. Logs the success message for each database.

---

## How to Use

1. Make the script executable:

```bash
chmod +x backup.sh
```

2. Run the script:

```bash
./backup.sh
```

---

## Notes

- This script is intended for **local MySQL backups**.
- It does **not** handle:
  - Remote MySQL servers
  - Backup retention or cleanup
  - Error handling
- Add cron jobs or enhancements as needed for production use.

---

## Example Output

```bash
Backup is created for my_database_1
Backup is created for my_database_2
Backup is created for my_database_3
```

---

## Automate with Cron (Optional)

To run this script daily at midnight, add this line to your crontab:

```bash
0 0 * * * /path/to/backup.sh
```

---

## Tip

To verify your login path credentials:

```bash
mysql --login-path=local -e "SELECT VERSION();"
```

---

Happy Backing Up!

