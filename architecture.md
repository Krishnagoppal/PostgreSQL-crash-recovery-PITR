# PostgreSQL Crash Recovery Architecture

```text
+----------------------+
| Application Users    |
+----------+-----------+
           |
           v
+----------------------+
| PostgreSQL Database  |
| netflix_db           |
+----------+-----------+
           |
           +----------------+
           |                |
           v                v
     Dead Tuples      High CPU Usage
           |
           v
     Performance Issue
           |
           v
     Accidental Delete
           |
           v
        PITR
           |
           v
   Database Recovered
```