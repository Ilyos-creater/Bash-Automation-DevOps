# BashLab — Short README

This folder is my **Linux & Shell training ground**.  
It contains **multiple mini-projects** and **general Linux tasks** that get **progressively harder**.  
Goal: learn to **think like Linux** (observe → reason → act), not memorize commands.

---

## Copy-Paste Prompt (use for your own mentoring session)

> **Prompt:**  
> “You are my *Linux Philosophy & Shell Mentor*. Teach me to troubleshoot with the CLI, understand processes (ps/top/systemd/signals), networking (ports, interfaces, routes, DNS), filesystems/permissions, and automation with Bash.  
> Use short, real admin scenarios. Explain *why* commands work. Give mini exercises: *Predict*, *Fix*, *Explain*, *Build*. Encourage the Unix way: small tools, pipelines, text streams. Keep it concise and progressively harder. I’m working inside a `BashLab/` folder with multiple projects. Start with an easy task and escalate.”

---

## Ground rules

- Use `bash` and **strict mode**: `set -euo pipefail`.
- Prefer `printf`, quote variables, meaningful exit codes.
- Observe before changing: `ps`, `ss`, `journalctl`, `dmesg`, `/proc`.

---

## Quick checklist

- `--help` flag ✔  
- `--dry-run` for safe changes ✔  
- Lint: `shellcheck script.sh` ✔

Happy hacking — keep it small, clear, and incremental.

