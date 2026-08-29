#!/usr/bin/env bash
# Downloads recommended Kiwix ZIM packs into 14-software-digital/zim/
# Requires: curl. Reader: install Kiwix (https://www.kiwix.org) to browse .zim files offline.
#
# Usage: ./download-kiwix.sh [pack-name ...]   (default: all)
#
# ZIM catalogue browsable at https://library.kiwix.org — URLs below point at the
# latest-version redirect pattern Kiwix publishes; re-run periodically to refresh.

set -euo pipefail

DEST="$(dirname "$0")/../14-software-digital/zim"
mkdir -p "$DEST"

declare -A PACKS=(
  [wikipedia-medicine]="https://download.kiwix.org/zim/wikipedia/wikipedia_en_medicine_maxi.zim"
  [wikihow]="https://download.kiwix.org/zim/wikihow/wikihow_en_maxi.zim"
  [wikibooks]="https://download.kiwix.org/zim/wikibooks/wikibooks_en_all_maxi.zim"
  [wiktionary]="https://download.kiwix.org/zim/wiktionary/wiktionary_en_all_maxi.zim"
  [ifixit]="https://download.kiwix.org/zim/ifixit/ifixit_en_all.zim"
  [appropedia]="https://download.kiwix.org/zim/other/appropedia_en_all_maxi.zim"
  [gutenberg]="https://download.kiwix.org/zim/gutenberg/gutenberg_en_all.zim"
  [wikipedia-top]="https://download.kiwix.org/zim/wikipedia/wikipedia_en_top_maxi.zim"
)

targets=("${@:-${!PACKS[@]}}")

for name in "${targets[@]}"; do
  url="${PACKS[$name]:-}"
  if [[ -z "$url" ]]; then
    echo "Unknown pack: $name (available: ${!PACKS[*]})" >&2
    continue
  fi
  out="$DEST/$(basename "$url")"
  echo "== $name -> $out =="
  curl -fL --retry 4 --retry-delay 5 -C - -o "$out" "$url"
done

echo "Done. Browse with Kiwix Desktop/Server pointed at $DEST"
