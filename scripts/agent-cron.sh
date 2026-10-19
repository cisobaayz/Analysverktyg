#!/usr/bin/env bash
# Körs på Beelink SER8 via cron. Exempel (crontab -e):
#   0 6 * * 1  /home/linus/analysverktyg/scripts/agent-cron.sh veckovis
#   0 6 1 * *  /home/linus/analysverktyg/scripts/agent-cron.sh manadsvis
# Kontrollera flaggor mot aktuell Claude Code-dokumentation (claude --help).
set -euo pipefail
cd "$(dirname "$0")/.."
LOG="logs/$(date +%F)-$1.log"; mkdir -p logs

run () { claude -p "$1" --permission-mode acceptEdits >> "$LOG" 2>&1; }

case "$1" in
  veckovis)
    run "Använd subagenten regelbevakare: gör veckans bevakning enligt dina instruktioner."
    run "Använd subagenten orkestrator: skriv veckans status och synka Todoledo."
    ;;
  manadsvis)
    run "Använd subagenten konkurrentbevakare: gå igenom matrisen och uppdatera."
    ;;
esac
git add docs && git commit -m "chore(agents): $1 $(date +%F)" || true
