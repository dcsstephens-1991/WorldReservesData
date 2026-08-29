# Regional Health Considerations

What matters medically in one place doesn't transfer to another — endemic disease, venomous species, climate exposure risk, and available medicinal plants are all geography-dependent. This folder applies the taxonomy in `docs/REGIONS.md`: each file is keyed to a lat/long bounding box first, country names second (since those drift over time).

## File format
Each file uses the required header from `docs/REGIONS.md`, then:
- **Climate-driven risks** — heat/cold illness patterns, seasonal hazards
- **Disease patterns** — locally significant infectious disease to be aware of
- **Dangerous species** — cross-reference to `06-animals-insects/`, venomous/medically significant species by name
- **Notes** — anything else regionally specific (altitude, water access patterns, etc.)

This is a starting scaffold, not exhaustive global coverage — populate additional subregions as needed using `TEMPLATE.md`.

## Existing files — every macro-region in `docs/REGIONS.md` now has at least one subregion file
- North America: `north-america_temperate.md`
- Central America & Caribbean: `central-america-caribbean_isthmus.md`, `central-america-caribbean_islands.md`
- South America: `south-america_amazon-basin.md`, `south-america_andean-highlands.md`, `south-america_southern-cone-patagonia.md`
- Europe: `europe_mediterranean.md`, `europe_central-western-temperate.md`, `europe_northern-boreal.md`
- North Africa & Middle East: `mena_arabian-peninsula.md`, `mena_north-africa-sahara.md`, `mena_levant-eastern-mediterranean.md`
- Sub-Saharan Africa: `sub-saharan-africa_west-african-coast.md`, `sub-saharan-africa_congo-basin.md`, `sub-saharan-africa_east-african-highlands.md`, `sub-saharan-africa_southern-african-savanna.md`, `sub-saharan-africa_sahel.md`
- South Asia: `south-asia_indo-gangetic-plains.md`, `south-asia_himalayan-foothills.md`, `south-asia_peninsula-sri-lanka.md`
- East Asia: `east-asia_temperate.md`, `east-asia_tibetan-plateau.md`
- Southeast Asia: `southeast-asia_mainland-mekong.md`, `southeast-asia_maritime-archipelago.md`
- Central Asia: `central-asia_steppe-and-highlands.md`
- Oceania & Pacific Islands: `oceania_australia-arid-temperate.md`, `oceania_australia-tropical-north.md`, `oceania_pacific-islands-nz.md`
- Polar: `arctic.md`, `antarctic.md`

The Pacific Islands & New Zealand file and a few Oceania/South America/Central Asia files remain broader overviews collapsing significant internal diversity — split further as detail is added, same as the original Sub-Saharan Africa/Asia split.

## To add a new region
Copy `TEMPLATE.md`, fill in the header from `docs/REGIONS.md`, and cross-check any species/disease claims against at least one authoritative source (WHO, CDC, or a regional health ministry) before treating it as reliable.
