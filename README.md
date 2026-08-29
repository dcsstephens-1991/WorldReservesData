# World Reserves Data

An offline, self-hosted knowledge repository for survival and civilization rebuilding — designed to live on a standalone SSD/HDD and remain useful with zero internet access.

## Goals

- **Survive** — first aid, water, food, shelter, safety in the first days/weeks of a crisis.
- **Sustain** — agriculture, food preservation, animal husbandry, basic medicine, sanitation.
- **Rebuild** — engineering, chemistry, energy, manufacturing, education, governance — the knowledge needed to climb back up the tech tree.

## Design principles

1. **Offline-first.** Nothing here depends on a live internet connection to be useful. Prefer downloadable archives (ZIM, PDF, EPUB, plain text/markdown) over links.
2. **Redundant & durable.** Plan for multiple drive copies, checksums, and a filesystem/format that survives partial corruption and doesn't require exotic software to read in 10-20 years.
3. **Legally reusable.** Prioritize public-domain, government (e.g. US military FM manuals, USDA, CDC/WHO), Creative Commons, or open-license sources so the archive can be freely copied and shared.
4. **Human-readable without power-hungry tools.** Plain text/markdown/PDF that can be read from any device, including a phone or e-reader running off a small battery/solar setup.
5. **Indexed and navigable without search infrastructure.** A human should be able to find what they need by browsing folders alone if the search index is unavailable.

## Repository layout

```
01-quick-reference/     Grab-and-go: triage cards, checklists, cheat sheets
02-first-aid-medical/   First aid, field medicine, "Where There Is No Doctor"-type refs
03-water/               Sourcing, purification, storage
04-food-agriculture/    Growing, foraging, animal husbandry, food preservation
05-plants-fungi/        Identification, edibility, toxicity, medicinal use
06-animals-insects/     Identification, husbandry, hunting/trapping, hazards
07-shelter-construction/Building, carpentry, masonry, structural basics
08-energy-power/        Off-grid power, batteries, mechanical power, fuels
09-tools-manufacturing/ Blacksmithing, machining, tool-making, repair
10-chemistry-materials/ Basic chemistry, soap, fuels, materials science
11-navigation-comms/    Maps, navigation, radio, signaling
12-science-education/   Core science/math textbooks for re-teaching a generation
13-governance-society/  Law, economics, history of civilization collapse/recovery
14-software-digital/    This archive's own tooling (Kiwix, readers, indexes)
scripts/                 Download/build/verify scripts
docs/                    Hardware plan, curation policy, master index
```

## Getting started

- Read [`docs/PLAN.md`](docs/PLAN.md) for the full build plan.
- Read [`docs/HARDWARE.md`](docs/HARDWARE.md) for drive/format/redundancy choices.
- Read [`docs/CURATION.md`](docs/CURATION.md) for sourcing and licensing rules.
- Read [`docs/REGIONS.md`](docs/REGIONS.md) for the geography taxonomy used by any region-specific content (lat/long-anchored, since political borders drift).
- Run scripts in [`scripts/`](scripts/) to pull the recommended offline content packs (Kiwix ZIMs, Project Gutenberg sets, etc.).

## Status

Scaffolding stage — folder structure and curated source lists are in place; content packs still need to be downloaded per `docs/PLAN.md` phases.
