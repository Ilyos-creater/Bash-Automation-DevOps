# The Projects here on First Five, have the intention, to offer 5 difficulty levels, getting harder, as it goes on.

- CLI Skeleton – “hello”
    
    • Build a tiny CLI with strict mode, --help, --name, --verbose.
    
    • Default name = $USER. Log to stderr, exit codes correct.
    
    • Acceptance: `./hello --name Ilyas` prints “Hello, Ilyas!” and `./hello --help` shows usage.
    
- File & Log Report
    
    • Script: `filereport <dir> [--ext .log] [--min-size 1M]`.
    
    • Output CSV: path,size_bytes,perms,owner,lines. Handle spaces in filenames.
    
    • Acceptance: works on any directory, non-zero exit on bad input.
    
- ProcWatch – supervise a flaky command
    
    • Run a command; if it exits non-zero, restart with exponential backoff (1/2/4/8… max 30s).
    
    • Trap SIGINT/SIGTERM to shut down cleanly; use a lockfile to prevent double runs.
    
    • Acceptance: Ctrl+C exits gracefully; log shows retries and final status.
    
- NetDoctor – DNS + TCP + HTTP checker
    
    • Input file lines: host,port,scheme (e.g., example.com,443,https).
    
    • For each: resolve DNS, test TCP connect, if http/https then curl and record status code + total time.
    
    • Print a table: host port dns_ok tcp_ok http_code time_s; return non-zero if any check fails.
    
    • Stretch: parallel checks (xargs -P or background jobs) and a --json flag.
    
- SafeBackup – archive + retention (cron-safe)
    
    • `backup --src <dir> --dest <dir> --keep 7 [--dry-run]`.
    
    • Create dest/backup-YYYYmmdd-HHMMSS.tar.gz (or rsync mirror), delete older than --keep.
    
    • Quiet by default (cron-friendly), clear logs on stderr when verbose, meaningful exit codes.
    
    • Acceptance: dry-run prints planned actions only; real run creates/rotates correctly.
