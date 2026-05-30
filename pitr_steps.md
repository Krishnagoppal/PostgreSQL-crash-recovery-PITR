# Point In Time Recovery (PITR)

## Enable WAL Archiving

```conf
wal_level = replica
archive_mode = on
archive_command = 'cp %p /pg_archive/%f'
```

## Create Archive Directory

```bash
mkdir /pg_archive
chmod 777 /pg_archive
```

## Take Base Backup

```bash
pg_basebackup -D /backup/basebackup -F p -X stream -P
```

## Simulate Data Loss

```sql
DELETE FROM netflix_shows;
```

## Recovery

```bash
touch $PGDATA/recovery.signal
```

```conf
restore_command='cp /pg_archive/%f %p'
recovery_target_time='YYYY-MM-DD HH:MM:SS'
```

Start PostgreSQL and verify data recovery.