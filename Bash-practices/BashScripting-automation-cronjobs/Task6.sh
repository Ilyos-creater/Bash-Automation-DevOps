#!/bin/bash


yesterday=$(date --date="yesterday" +"%b %d")


fail_count=$(grep "sshd" /var/log/auth.log | grep "Failed password" | grep "$yesterday" | wc -l)

if [ "$fail_count" -gt 5 ]; then
    echo "[$(date)] ⚠️  WARNING: $fail_count failed login attempts in the last 24 hours" >> /home/ilyas/login_warnings.log
fi

