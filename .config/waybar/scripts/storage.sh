#!/bin/sh
# Shows root filesystem usage as a percentage and used/total in GB
used=$(df -h / | awk 'NR==2{print $3}')
total=$(df -h / | awk 'NR==2{print $2}')
percent=$(df -h / | awk 'NR==2{print $5}')
tooltip="Used $used\nTotal $total"
printf '{"text": "%s  ", "tooltip": "%s"}\n' "$percent" "$tooltip"
