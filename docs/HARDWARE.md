# Hardware & Storage Plan

## Drive selection
- **HDD over SSD for cold long-term storage.** HDDs (properly stored, spun up occasionally) tend to retain data reliably for 5-10+ years unpowered; SSD NAND can lose charge/data within 1-2 years unpowered, especially in heat. For a "bury it and forget it" reserve copy, HDD wins.
- **SSD for the active/portable copy** you'll actually use day-to-day (faster, shock-resistant, no moving parts) — but re-power and refresh it periodically (annually).
- Capacity target: 2-4 TB is plenty for Phase 1+2 content with headroom; the encyclopedic ZIM packs are the biggest line items (tens of GB each).

## The 3-2-1 rule, adapted for offline survival data
- **3 copies** minimum.
- **2 different media types** (e.g. one SSD, one HDD, or add optical/M-DISC for a truly archival third copy).
- **1 copy off-site** (different physical location: relative's house, safe deposit box, vehicle bug-out bag) so a single fire/flood/theft can't wipe everything.

## Filesystem
- **exFAT** for the portable/shared drives — universally readable (Windows/Mac/Linux/Android) without special drivers, no journaling overhead, simple recovery tools if corrupted.
- Avoid proprietary/journaled filesystems (NTFS/APFS) for the archival copy — exFAT keeps it accessible from any future OS with minimal tooling.
- Keep a copy of a simple recovery tool (e.g. `testdisk`/`photorec` binaries) *on the drive itself* in `14-software-digital/`.

## Format & partitioning
- Single exFAT partition, no encryption on the archival copies (encryption keys get lost; if security is a concern, keep one encrypted "operational" copy and unencrypted "doomsday" copies).
- Label drives clearly and physically (label maker, not just a digital volume name).

## Power-independent access
Data is useless without a way to read it. Plan for:
- A cheap, sturdy, replaceable device that can read USB drives without a full PC: a basic Android tablet/e-reader, or a Raspberry Pi + small monitor, kept with the drive.
- A small solar panel + battery bank/power station sized to charge that reading device.
- Printed copies of the Phase 1 quick-reference layer as an ultimate no-power fallback.

## Verification & integrity
- Generate checksums for the whole tree after every update: `scripts/verify.sh` (SHA-256 manifest).
- Re-verify checksums whenever a copy is made or once a year, whichever comes first.
- Keep the manifest itself backed up separately from the drive (e.g. in this git repo) so corruption can be detected even if the drive's own manifest is damaged.

## Physical care
- Store drives in anti-static bags inside a hard case with desiccant packs.
- Avoid extreme temperature/humidity swings; a basement or interior closet beats a garage or attic.
- Spin up/power on stored drives every 6-12 months to keep bearings/electronics healthy (HDD) or refresh charge (SSD).
