---
title: "csWallpapers"
aliases: "csWallpapers"
linter-yaml-title-alias: "csWallpapers"
date created: Wednesday, October 8th 2025, 11:20:50 pm
date modified: 2026-07-21
---

<!-- @format -->

# csWallpapers

Personal catalog of Nordic- and Arctic-inspired wallpapers. Repository metadata organizes the collection; each artwork remains subject to its creator's rights.

## Repository Structure

- `wallpapers/` contains images and helpers such as `rename_wallpaper.py`.
- `README.md` documents local use and maintenance.
- `LICENSE` records the third-party artwork notice.

## Usage

- Browse the collection below `wallpapers/`; names and directories record acquisition dates.
- Preserve an original filename until attribution is recorded.
- Run `python wallpapers/rename_wallpaper.py` to normalize filenames based on creation dates.
- Use `./sync_wallpapers.sh` to mirror the collection into `$HOME/.config/wallpaper` on Linux or macOS.
- Run `./push.sh` from anywhere within the repository to stage all changes, commit with the `<repo>-YYYYMMDD` convention, and push if `origin` exists.
- Add `ATTRIBUTION.md` when a creator's terms require explicit credit.
- Do not redistribute images without verifying the rights granted by each creator.

## Contribution Notes

Report missing attribution or conflicting terms before changing the archive.

## Licensing

The repository grants no rights to the wallpapers. See `LICENSE` and the original creator's terms before use or redistribution.
