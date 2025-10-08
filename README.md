# csWallpapers

Curated Nordic/Arctic-inspired wallpapers collected for personal use. The repository focuses on organizing the catalog and preserving metadata; the underlying artwork remains the property of the original creators.

## Repository Structure
- `wallpapers/` – image library plus helper utilities such as `rename_wallpaper.py`.
- `README.md` – project overview, usage notes, and contribution guidance.
- `LICENSE` – licensing notice for third-party artwork.

## Usage
- Browse wallpapers inside `wallpapers/`; subdirectories or naming reflect acquisition order and dates.
- Add new images while preserving original filenames until attribution details are recorded.
- Run `python wallpapers/rename_wallpaper.py` to normalize filenames based on creation dates.
- Use `./sync_wallpapers.sh` to mirror the collection into `$HOME/.config/wallpaper` on Linux or macOS.
- Run `./push.sh` from anywhere within the repository to stage all changes, commit with the `<repo>-YYYYMMDD` convention, and push if `origin` exists.
- Keep a simple `ATTRIBUTION.md` (optional) alongside files if specific licenses require explicit credit.
- Do not redistribute images without verifying the rights granted by each creator.

## Contribution Notes
This is a personal archive. If you spot missing attribution or licensing conflicts, open an issue before submitting changes.

## Licensing
This project does not grant any rights to the wallpapers themselves. See `LICENSE` for the full notice and ensure all usage respects the original terms provided by each artist.
