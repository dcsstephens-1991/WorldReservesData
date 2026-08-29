# Battery Storage Basics

## Why storage matters
Most renewable sources (solar, wind) are intermittent — storage bridges the gap between generation and when power is actually needed (night, calm periods), and smooths out variable output.

## Common battery types for off-grid use
- **Lead-acid (flooded)**: cheapest upfront, well-understood technology, but needs regular maintenance (checking/topping electrolyte fluid), ventilation (hydrogen gas during charging), and shouldn't be discharged below roughly 50% regularly without shortening lifespan significantly.
- **Sealed lead-acid (AGM/gel)**: no maintenance/topping needed, safer for enclosed spaces, generally more expensive than flooded, still has a discharge-depth lifespan tradeoff similar to flooded lead-acid.
- **Lithium (LiFePO4 common for off-grid)**: significantly longer lifespan and more usable capacity (can be discharged much deeper without damage) than lead-acid, but higher upfront cost; increasingly the preferred choice for new off-grid systems where budget allows.

## Basic care principles (apply broadly across types)
- Avoid deep discharge below the manufacturer's recommended threshold — this is one of the most damaging things you can do to most battery chemistries.
- Avoid extreme temperature exposure — both charging and capacity are affected by heat and cold; very cold conditions in particular reduce usable capacity temporarily.
- Keep terminals clean and connections tight — corrosion/loose connections cause resistance, heat, and power loss.
- Match your charge controller/charging source to the specific battery chemistry — charging profiles (voltage curves) differ between lead-acid and lithium, and using the wrong profile damages the battery or reduces its lifespan.

## Simple non-electrical energy storage worth knowing
- **Thermal mass** (masonry, water) stores heat energy directly — a well-designed structure using thermal mass (see `07-shelter-construction/basic-masonry-earthbuilding.md`) reduces the energy needed for heating/cooling in the first place, which is often more efficient than storing electricity to run heating/cooling equipment.
- **Pumped water storage** (pumping water uphill when power is available, running it through a small turbine when needed) is a legitimate but infrastructure-heavy storage method, more relevant at a community scale than an individual household.

## Needs deeper research
Detailed battery bank sizing/wiring (series vs. parallel configurations), specific charge controller settings by battery chemistry, battery reconditioning/troubleshooting.
