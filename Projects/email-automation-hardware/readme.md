# 💽 Disk Usage Alert Script

This Bash script monitors disk space usage on your system and alerts you when any partition exceeds a certain threshold. Great for system admins and developers who want to avoid disk-related issues.

---

## ✨ Features

- ✅ Monitors all mounted partitions (except `tmpfs` and header line)
- ⚙️ Customizable usage threshold
- 📧 Optional email notification
- 🧠 Simple logic using `df`, `awk`, `grep`, `cut`

---

## 📦 Requirements

- Bash shell
- Utilities: `df`, `awk`, `cut`, `grep`
- (Optional) `mail` utility for email alerts

---

## 🛠 Configuration

At the top of the script, you can change the following variables:

```bash
EMAILTO="root@localhost"   # Set your email address
LIMITHDD=89                # Set the disk usage threshold (in %)

