# PostgreSQL Crash Recovery Using PITR

## Project Overview

This project simulates a PostgreSQL production database failure and recovery scenario.

## Technologies Used

- PostgreSQL
- Linux
- WAL Archiving
- PITR
- VACUUM
- pg_basebackup

## Scenarios Covered

### Dead Tuple Analysis

Generated dead tuples using UPDATE and DELETE operations.

### CPU Usage Investigation

Monitored PostgreSQL backend processes using Linux tools.

### VACUUM

Removed dead tuples and reclaimed storage.

### WAL Archiving

Configured WAL archiving for continuous backup.

### PITR

Recovered accidentally deleted data using Point-In-Time Recovery.

## Project Structure

```text
sql/
backup/
docs/
screenshots/
```

## Outcome

Successfully restored lost data using PostgreSQL PITR.