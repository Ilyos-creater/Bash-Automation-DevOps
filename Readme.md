# Bash-Automation-DevOps

A curated collection of Bash work: from fundamentals to real-world automation.  
This repo shows my journey learning to **think in Linux** and to build small, composable scripts that solve real problems.

---

## 📁 Repository Structure

.
├── Bash-Kurs/         # Course work – small projects & exercises from a structured Bash course  
├── Bash-practices/    # Practice tasks from my internship (utility-focused scripts)  
├── Projects/          # Personal milestone projects (bigger scope, automation & DevOps flavored)  
├── BashLab/           # Experimental space built together with my Linux/Shell mentor (AI)  
└── Readme.md

### What lives where?

- Bash-Kurs  
  Fundamentals: parameters, arrays, functions, I/O, exit codes, traps, etc. Great for reviewing basics.

- Bash-practices  
  On-the-job snippets & utilities (log rotation, backups, ETL-like tasks, service checks).

- Projects  
  “Shippable” scripts with README/usage/error handling. Often include config and test data.

- BashLab  
  Scratchpad for experiments and prototypes; promote stable tools into `Projects/`.

---

## 🚀 Quick Start

    # 1) Clone
    git clone https://github.com/<your-username>/Bash-Automation-DevOps.git
    cd Bash-Automation-DevOps

    # 2) Run any script (example)
    chmod +x Projects/<some-script>.sh
    ./Projects/<some-script>.sh

    # 3) Arguments & help
    ./Projects/<some-script>.sh --help

> Scripts are POSIX-leaning **Bash**. Prefer `bash` (not `sh`) unless noted.

---

## 🧩 Script Template (shared pattern)

Use this header for predictable behavior & easy automation:

    #!/usr/bin/env bash
    set -euo pipefail
    IFS=$'\n\t'

    SCRIPT_NAME="$(basename "$0")"

    usage() {
      cat <<EOF
    $SCRIPT_NAME — <one-line description>
    Usage: $SCRIPT_NAME [options]
    Options:
      -h, --help       Show help
      -v, --verbose    Verbose output
    EOF
    }

    log()  { printf '[%s] %s\n' "$(date +'%F %T')" "$*" >&2; }
    die()  { log "ERROR: $*"; exit 1; }

    VERBOSE=0
    while [[ $# -gt 0 ]]; do
      case "$1" in
        -h|--help) usage; exit 0;;
        -v|--verbose) VERBOSE=1; shift;;
        *) die "Unknown argument: $1";;
      esac
    done

    main() {
      (( VERBOSE )) && log "Verbose mode on"
      # TODO: your logic
    }

    main "$@"

Why: strict mode + clear UX + meaningful exits ⇒ easier debugging & CI.

---

## 🧪 Quality: Lint, Format, Conventions

- ShellCheck (lint):

      # Debian/Ubuntu
      sudo apt-get update && sudo apt-get install -y shellcheck
      shellcheck <script>.sh

- shfmt (format):

      # macOS (Homebrew): brew install shfmt
      # Go: go install mvdan.cc/sh/v3/cmd/shfmt@latest
      shfmt -w -i 2 -ci .

- Conventions
  - Shebang: `#!/usr/bin/env bash`
  - Prefer long options (`--help`, `--file`)
  - Use `printf` over `echo`
  - Quote variables `"${var}"`; use arrays for lists
  - Check exit codes; fail fast with context

---

## 🔧 Common DevOps-y Tasks Covered

- Logs & Monitoring: tail/grep pipelines, rotation helpers, `journalctl` digests  
- Backups: timestamped archives, retention policies  
- Networking: health checks with `curl`, port probes with `ss`, DNS sanity with `dig`  
- Schedulers: cron-friendly, idempotent scripts  
- System: `systemd` helpers, disk/memory inspectors, simple installers

---

## 📚 How to Navigate / Learn

1. Start in `Bash-Kurs/` – read, run, tweak the basic exercises.  
2. Study `Bash-practices/` – see how small tools solve real problems.  
3. Run `Projects/` – more complete tools; read READMEs and extend with flags.  
4. Experiment in `BashLab/` – prototype; promote stable tools into `Projects/`.

> “Small tools, glued with text, composed like Lego.” — the Unix way

---

## 🧠 Philosophy

- Make state visible: clear logs; expose `--dry-run` for safety.  
- Design for composition: read from stdin, write to stdout, exit with meaningful codes.  
- Automate the investigation: scripts that *explain* failures are more valuable than ones that just fail.  
- Document the contract: every script answers what / why / how / exit codes.

---

## 🤝 Contributing

- Keep scripts self-contained and documented (`--help`).  
- Add examples in the script header or a local README.  
- Include test data where relevant (`/data` subfolder).  
- Lint + format before committing.

---

## 📝 License

MIT (unless a subfolder states otherwise).

---

## 📬 Contact

Open an issue or ping me on GitHub if you have ideas, bugs, or suggestions. Happy hacking!

