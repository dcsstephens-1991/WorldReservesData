# Region & Geography Taxonomy

A shared standard for any content in this archive that varies by geography (medical risk profiles, plant/fungi identification, venomous species, climate-driven construction, agriculture). Used by `02-first-aid-medical/`, `05-plants-fungi/`, `06-animals-insects/`, `04-food-agriculture/`, and others.

## Why lat/long is the ground truth, not country names

Political borders and country names change — sometimes within a person's lifetime (South Sudan's independence in 2011, Yugoslavia's breakup, colonial-era boundaries redrawn post-independence, contested territories that vary by which map you're reading). A country name in this archive can go stale or become disputed; a latitude/longitude coordinate cannot. So:

- **Latitude/longitude bounding boxes are the stable, primary identifier** for any region referenced here.
- **Country and subnational-territory names are a convenience label**, attached as of a stated date, and expected to need updates over time without touching the underlying geographic data.
- When in doubt, describe a region by coordinates + biome/climate first, political geography second.

## The four levels

| Level | Description | Example | Stability |
|---|---|---|---|
| 1 — Macro-region | Continent-scale, ~1000+ km across | "Sub-Saharan Africa" | Very stable |
| 2 — Subregion | Climate/ecological cluster within a macro-region | "East African Highlands" | Stable |
| 3 — Country | Current sovereign state, ISO 3166-1 code | "Kenya (KE)" | Changes over decades |
| 4 — Subnational/territory | State/province/administrative division, ISO 3166-2 code | "Kenya, Nairobi County (KE-30)" | Changes most often |

Every region-specific file should reference Level 1-2 (macro-region/subregion) as the primary heading, and note Level 3-4 only inside the content, always paired with an "as of [year]" note.

## Required header block for any region-specific content file

```
Region: [Subregion], [Macro-region]
Approx. bounding box: [lat]°N–[lat]°N, [long]°W/E–[long]°W/E
Countries/territories (as of [year]): [list — informational only, not the primary key]
Note: political boundaries may change; the bounding box above is this file's stable reference.
```

## Macro-regions (Level 1) — reference bounding boxes

| Macro-region | Approx. bounding box (lat, long) |
|---|---|
| North America | 15°N–83°N, 170°W–50°W |
| Central America & Caribbean | 7°N–23°N, 118°W–59°W |
| South America | 56°S–13°N, 82°W–34°W |
| Europe | 35°N–71°N, 25°W–60°E |
| North Africa & Middle East | 12°N–42°N, 17°W–63°E |
| Sub-Saharan Africa | 35°S–20°N, 18°W–52°E |
| South Asia | 5°N–38°N, 60°E–98°E |
| East Asia | 18°N–54°N, 73°E–150°E |
| Southeast Asia | 11°S–29°N, 92°E–141°E |
| Central Asia | 35°N–56°N, 46°E–88°E |
| Oceania & Pacific Islands | 47°S–20°N, 110°E–130°W |
| Arctic | 66°N–90°N, all longitudes |
| Antarctic | 90°S–60°S, all longitudes |

Subregions (Level 2) are defined inside each macro-region's content as needed — e.g. North America splits into Pacific Northwest, Desert Southwest, Great Plains, Northeast/Mid-Atlantic, Southeast, Boreal Canada, etc. Don't pre-define every subregion globally; define one the first time a file needs it, and reuse it after.

## File naming convention

`[macro-region-slug]_[subregion-slug].md`, e.g. `north-america_pacific-northwest.md`. Do not encode country names into filenames — countries belong inside the content, not the path, since they're the least stable part of the classification.

## What stays political on purpose

Some content is inherently tied to nation-states regardless of geography — law, currency, governance systems (`13-governance-society/`), and some cultural/religious practice notes. For that content, use country/territory names directly and just date-stamp them; forcing lat/long onto content that's actually about human institutions adds no reliability. Use this taxonomy for anything where the underlying reality is physical/ecological (climate, species, terrain, disease vectors) — that's where borders drift but geography doesn't.
