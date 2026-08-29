# Build Plan

## Phase 0 — Foundation (this scaffold)
- Folder taxonomy, curation policy, hardware/format decisions.
- `scripts/` for reproducible downloads so content can be re-pulled/updated later.

## Phase 1 — Quick-reference core (target: <2 GB, fits on a phone)
The "first 72 hours" layer. Should be the first thing copied to any device.
- Triage & first aid quick cards
- Water purification quick steps
- Edible/poisonous plant quick ID (regional)
- Basic knots, fire-starting, shelter
- Master index / "how to use this drive" README

## Phase 2 — Deep reference packs (target: 50-200 GB, the SSD/HDD proper)
Bulk offline encyclopedic content, mostly via **Kiwix ZIM files** (see `scripts/download-kiwix.sh`):
- Wikipedia (full or "medicine/school" subset)
- WikiHow, Wikibooks, Wikiversity, Wiktionary
- Project Gutenberg (public-domain books: agriculture, medicine, engineering, history)
- Where There Is No Doctor / Where There Is No Dentist (Hesperian, CC-licensed)
- iFixit (repair guides)
- Appropedia (appropriate technology / off-grid living)
- Survivor Library-style engineering/trade manuals (pre-1930 public domain texts covering everything from blacksmithing to steam engines)
- USDA / extension office agriculture guides
- Army/Marine Corps field manuals (FM 21-76 Survival, FM 4-25.11 First Aid, etc. — public domain, US Gov works)

## Phase 3 — Category curation
Work through each numbered folder and populate it with:
1. A `README.md` describing scope and the best 3-5 authoritative sources.
2. Primary source files (PDF/EPUB/markdown) organized by subtopic.
3. A short "cheat sheet" markdown summarizing the folder for offline browsing without opening large files.

Suggested order (survival-critical first): 02 → 03 → 04 → 05/06 → 07 → 08 → 01 (compile the quick-reference layer last, once source material exists to summarize) → 09 → 10 → 11 → 12 → 13.

## Phase 4 — Hardware build
See `docs/HARDWARE.md`. Buy/format drives, load content, verify checksums, store copies in separate physical locations (home, vehicle, off-site).

## Phase 5 — Maintenance
- Re-run `scripts/` yearly to pull updated ZIM snapshots.
- Regenerate checksums (`scripts/verify.sh`) after every content change.
- Keep a `docs/CHANGELOG.md` of what was added/updated and when.

## Non-goals
- Not attempting to mirror the entire internet. Curated, prioritized, and space-conscious beats exhaustive.
- Not building custom software — leaning on mature offline tools (Kiwix, standard PDF/EPUB readers) that will still exist and be installable from local copies in the future.
