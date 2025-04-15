#!/bin/bash

domains=(
  "google.com"
  "github.com"
  "cloudflare.com"
  "openai.com"
  "example.com"
)


File="ping_ergebnisse.txt"


echo "Netzwerklatenztest - $(date)" > "$File"
echo "=============================" >> "$File"


for domain in "${domains[@]}"; do
  echo "Testing $domain..."
  echo "Domain: $domain" >> "$File"

  
  ping_output=$(ping -c 4 "$domain" 2>&1)

  
  if [[ $? -ne 0 ]]; then
    echo "Fehler: $ping_output" >> "$File"
  else
    avg_latency=$(echo "$ping_output" | tail -1 | awk -F '/' '{print $5}')
    echo "Durchschnittliche Latenz: ${avg_latency} ms" >> "$File"
  fi

  echo "-----------------------------" >> "$File"
done

echo "Test abgeschlossen. Ergebnisse in '$File' gespeichert."

