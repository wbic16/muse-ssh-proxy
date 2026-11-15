#!/bin/bash
# usage: sshn.sh <ip> <remote command...>
ip="$1"; shift
exec ssh -i "$HOME/.ssh/id_ed25519" -o IdentitiesOnly=yes -o BatchMode=yes \
  -o ConnectTimeout=20 -o StrictHostKeyChecking=accept-new \
  -o "ProxyCommand=nc -X connect -x hatch-egress-proxy:3130 %h %p" \
  wbic16@"$ip" "$@"
