#!/usr/bin/env bash
# Einmalig ausfuehren, um das Repo nach GitHub zu pushen.
# Voraussetzung: leeres, OEFFENTLICHES Repo "BlizzGame/legacyv-theme" existiert bereits.
set -e
cd "$(dirname "$0")/.."
git init -b main
git add .
git commit -m "LegacyV v1.0.0"
git remote add origin https://github.com/BlizzGame/legacyv-theme.git
git push -u origin main
git tag v1.0.0 && git push origin v1.0.0
echo "Fertig. Install-Link: https://raw.githubusercontent.com/BlizzGame/legacyv-theme/main/LegacyV.theme.css"
