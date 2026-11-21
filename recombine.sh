#!/usr/bin/env bash
set -e
printf "file '2026-11-21_02-45-49_part01.mp4'
file '2026-11-21_02-45-49_part02.mp4'
file '2026-11-21_02-45-49_part03.mp4'
file '2026-11-21_02-45-49_part04.mp4'
file '2026-11-21_02-45-49_part05.mp4'
file '2026-11-21_02-45-49_part06.mp4'
file '2026-11-21_02-45-49_part07.mp4'
file '2026-11-21_02-45-49_part08.mp4'
file '2026-11-21_02-45-49_part09.mp4'
file '2026-11-21_02-45-49_part10.mp4'
file '2026-11-21_02-45-49_part11.mp4'\n" > concat_list.txt
echo "Recombining 11 parts into 2026-11-21_02-45-49.mp4..."
ffmpeg -y -f concat -safe 0 -i concat_list.txt -c copy "2026-11-21_02-45-49.mp4"
rm concat_list.txt
echo "Done: 2026-11-21_02-45-49.mp4"
