#!/usr/bin/env bash
# ~/.config/waybar/mediaplayer_control.sh
# Usage: mediaplayer_control.sh play-pause|next|previous

ACTION="$1"
PYTHON_SCRIPT="$HOME/.config/waybar/mediaplayer.py"
PLAYER=$(python3 "$PYTHON_SCRIPT" --player '' 2>/dev/null | jq -r '.player' | head -n1)

if [ -z "$PLAYER" ] || [ "$PLAYER" = "null" ]; then
  # fallback to default playerctl behavior
  playerctl "$ACTION"
else
  playerctl --player="$PLAYER" "$ACTION"
fi
