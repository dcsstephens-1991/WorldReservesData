# Regional Health Considerations

What matters medically in one place doesn't transfer to another — endemic disease, venomous species, climate exposure risk, and available medicinal plants are all geography-dependent. This folder applies the taxonomy in `docs/REGIONS.md`: each file is keyed to a lat/long bounding box first, country names second (since those drift over time).

## File format
Each file uses the required header from `docs/REGIONS.md`, then:
- **Climate-driven risks** — heat/cold illness patterns, seasonal hazards
- **Disease patterns** — locally significant infectious disease to be aware of
- **Dangerous species** — cross-reference to `06-animals-insects/`, venomous/medically significant species by name
- **Notes** — anything else regionally specific (altitude, water access patterns, etc.)

This is a starting scaffold, not exhaustive global coverage — populate additional subregions as needed using `TEMPLATE.md`.

## Existing files
- `north-america_temperate.md`
- Sub-Saharan Africa: `sub-saharan-africa_west-african-coast.md`, `sub-saharan-africa_congo-basin.md`, `sub-saharan-africa_east-african-highlands.md`, `sub-saharan-africa_southern-african-savanna.md`, `sub-saharan-africa_sahel.md`
- South Asia: `south-asia_indo-gangetic-plains.md`, `south-asia_himalayan-foothills.md`, `south-asia_peninsula-sri-lanka.md`
- Southeast Asia: `southeast-asia_mainland-mekong.md`, `southeast-asia_maritime-archipelago.md`

## To add a new region
Copy `TEMPLATE.md`, fill in the header from `docs/REGIONS.md`, and cross-check any species/disease claims against at least one authoritative source (WHO, CDC, or a regional health ministry) before treating it as reliable.
