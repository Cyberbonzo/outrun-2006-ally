#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")" && pwd)"
steam="${STEAM_COMPAT_CLIENT_INSTALL_PATH:-$HOME/.local/share/Steam}"
export STEAM_COMPAT_CLIENT_INSTALL_PATH="$steam"
export STEAM_COMPAT_DATA_PATH="$root/compatdata"
export DXVK_FRAME_RATE=60 DXVK_LOG_PATH="$root/logs"
unset LD_PRELOAD
mkdir -p "$root/logs" "$root/compatdata" "$root/game/SaveGame"
cd "$root/game"
if [[ ! -f outrun2006.ini ]]; then
    cp "$root/outrun2006.ini" outrun2006.ini
fi
exec "$steam/steamapps/common/Proton 11.0/proton" waitforexitandrun "$PWD/OR2006C2C.EXE" >"$root/logs/jogo.log" 2>&1
