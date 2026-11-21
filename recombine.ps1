# Recombine parts into original file (0 re-encoding)
$concatList = "concat_list.txt"
@(
    "file '2026-11-21_02-45-49_part01.mp4'",
    "file '2026-11-21_02-45-49_part02.mp4'",
    "file '2026-11-21_02-45-49_part03.mp4'",
    "file '2026-11-21_02-45-49_part04.mp4'",
    "file '2026-11-21_02-45-49_part05.mp4'",
    "file '2026-11-21_02-45-49_part06.mp4'",
    "file '2026-11-21_02-45-49_part07.mp4'",
    "file '2026-11-21_02-45-49_part08.mp4'",
    "file '2026-11-21_02-45-49_part09.mp4'",
    "file '2026-11-21_02-45-49_part10.mp4'",
    "file '2026-11-21_02-45-49_part11.mp4'",
) | Out-File -FilePath $concatList -Encoding ascii
Write-Host "Recombining 11 parts into 2026-11-21_02-45-49.mp4..."
ffmpeg -y -f concat -safe 0 -i $concatList -c copy "2026-11-21_02-45-49.mp4"
Remove-Item $concatList
Write-Host "Done: 2026-11-21_02-45-49.mp4"
