# Curation Policy

## Licensing priorities (in order)
1. **Public domain** — pre-1929 US works, US federal government works (military manuals, USDA, CDC, NOAA, NASA are all public domain by default).
2. **Creative Commons (CC0, CC-BY, CC-BY-SA)** — e.g. Wikipedia/Wikimedia projects, Hesperian Health Guides, Appropedia, OpenStax textbooks.
3. **Freely redistributable with attribution** — check each source's terms explicitly; keep a note of the license in the folder's README.
4. Avoid copyrighted commercial material unless you personally own it and this is a private, non-distributed copy — don't build the "shareable" archive out of pirated content.

## Source quality bar
For each topic, prefer (in order):
1. A **practical field manual** written for non-experts under real constraints (military FM/TM manuals, Hesperian guides, agricultural extension bulletins).
2. A **comprehensive reference** (textbook, encyclopedia article) for depth once the practical guide is in place.
3. **Multiple independent sources** for anything safety-critical (first aid, edibility of plants/fungi, structural engineering) — cross-check before trusting a single source.

## Safety-critical categories — extra scrutiny
Medical (02), food/water (03-04), and plant/fungi identification (05) entries must:
- Cite the source and edition/date.
- Flag any content that is regionally specific (e.g. "temperate North America" plant ID doesn't transfer to other continents).
- Never rely on a single photo/description for "safe to eat" determinations — require at least two independent identification criteria (this should be stated in the content itself, e.g. Hesperian and military manuals already do this well).

## File format standards
- Prefer **PDF** for anything with diagrams/original formatting (field manuals, textbooks).
- Prefer **plain Markdown** for anything you write/summarize yourself (cheat sheets, indexes) — smallest, most durable, most easily searched/printed.
- Use **EPUB** only when a good PDF/markdown isn't available.
- Avoid proprietary formats (.docx, .pages) for anything meant to last decades.

## Naming convention
`NN-category/subtopic/short-descriptive-title_source-or-org_year.ext`

Example: `02-first-aid-medical/trauma/tourniquet-application_us-army-fm4-25.11_2002.pdf`

## Attribution log
Every folder should have a `SOURCES.md` listing: title, author/publisher, license, retrieval URL (for provenance even though the archive is offline), and retrieval date.
