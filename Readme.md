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
    In my 1 year internship, I had some practices to learn Bash Scripting (log rotation, backups, ETL-like tasks, service checks).

- Projects  
  “Shippable” scripts with README/usage/error handling. Often include config and test data.

- BashLab  
  Here I use Chatgpt to give me tasks and I gotta solve them on my own, to stay fluid and learn Shell Scripting

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

## 🔧 Common DevOps-y Tasks Covered

- Logs & Monitoring: tail/grep pipelines, rotation helpers, `journalctl` digests  
- Backups: timestamped archives, retention policies  
- Networking: health checks with `curl`, port probes with `ss`, DNS sanity with `dig`  
- Schedulers: cron-friendly, idempotent scripts  
- System: `systemd` helpers, disk/memory inspectors, simple installers

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

