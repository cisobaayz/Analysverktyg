# Analysverktyg – projektkontext

## Vad vi bygger
SaaS för hållbarhetskonsulter: en sammanhängande analyskedja
PESTEL/omvärld → intressenter → dubbel väsentlighetsanalys (IRO, top-down enl. ESRS 1 §27 som förval) → SWOT/TOWS → GAP (EFRAG-datapunkter) → mål/KPI → export.
Kärnvärde: spårbarhet (källa, bedömare, version, motivering per objekt) + multi-klient/white-label för byråer.
Marknad: svenska boutique-byråer som jobbar med bolag < 1 000 anställda (VSME, kundkrav, EmpCo).

## Gemensamt minne
- docs/regelverk/   – regelbevakning (regelbevakare)
- docs/konkurrenter/ – konkurrentmatris (konkurrentbevakare)
- docs/kundinsikter/ – intervjusammanfattningar, prospektlistor (kundinsikt)
- docs/metod/       – metodkedja, datapunktsmappning, övningscase (metod)
- docs/beslut/      – ADR:er och beslut (arkitekt + Linus)
- docs/status.md    – veckostatus (orkestrator)
Läs bara de filer din uppgift behöver. Skriv kort, strukturerat, med källa + datum.

## Mänskliga grindar (agenter får ALDRIG)
- skicka mejl/meddelanden eller kontakta externa personer – bara skriva utkast
- merga till main, deploya eller ändra produktion
- fatta go/no-go-, pris- eller bolagsbeslut – bara ta fram underlag
- lagra personuppgifter utöver offentlig yrkeskontaktinfo (namn, roll, byrå)
- påstå något om regelverk utan länk till primärkälla (EUR-Lex, EFRAG, FAR, riksdagen, ESMA)

## Tokenregler
- Varje agent har bara de verktyg den behöver (se .claude/agents/).
- Sammanfatta källor, klistra inte in dem. Max ~1 sida per rapport.
- Uppdatera befintliga filer med diff hellre än att skriva om dem.

## Språk
Svenska i docs och UI-texter, engelska i kod och commits.
