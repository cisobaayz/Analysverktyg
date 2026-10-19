# Analysverktyg – agentstruktur

Starter-kit för Claude Code. Agenterna gör research, bevakning, analysunderlag och kod.
Linus gör intervjuer, skickar meddelanden, fattar beslut och mergar.

## Agenter
| Agent | Modell | Körs | Levererar |
|---|---|---|---|
| orkestrator | Sonnet | Varje måndag (cron) | docs/status.md + Todoledo-kommentarer |
| regelbevakare | Haiku | Varje måndag (cron) | docs/regelverk/ |
| konkurrentbevakare | Haiku | Månadsvis (cron) + inför demos | docs/konkurrenter/ |
| kundinsikt | Sonnet | Manuellt, efter intervjuer | prospekt, utkast, intervjusyntes |
| metod | Sonnet | Manuellt, sprint 0–2 | briefs, datapunkter.csv, övningscase |
| arkitekt | Opus | Manuellt, sprint 2–3 | ADR:er, datamodell |
| utvecklare | Sonnet | Per feature | feature-branch + PR |
| granskare | Sonnet | Per PR | GODKÄND / ÄNDRINGAR KRÄVS |

## Kom igång
1. Skapa privat GitHub-repo, packa upp i roten.
2. Kör `claude` i mappen → `/agents` för att se att alla laddas.
3. `/mcp` → autentisera Todoledo och Plaud. Kontrollera verktygsnamnen och justera `tools:` i agentfilerna om de skiljer sig.
4. Testkör: `claude -p "Använd subagenten regelbevakare: gör veckans bevakning."`
5. Lägg in cron på Beelinken (se scripts/agent-cron.sh).

## Exempel (interaktivt)
- "Låt metod göra en brief av ESRS 1 §27–28"
- "Låt kundinsikt bygga prospektlista med 20 byråer i Västsverige och Stockholm"
- "Låt kundinsikt sammanfatta senaste Plaud-intervjun"
- "Låt arkitekt skriva ADR-001 datamodell"
- "Låt utvecklare bygga issue #12, sen granskare på PR:en"

## Kostnad
Schemalagda headless-körningar drar från din Claude-plan eller kräver API-nyckel.
Kolla aktuella villkor innan du schemalägger tätt. Haiku för bevakning håller nere förbrukningen.
