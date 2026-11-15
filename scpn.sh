#!/bin/bash
# usage: scpn.sh <ip> <localfile> <remotedest>
ip="$1"; src="$2"; dst="$3"
exec scp -i "$HOME/.ssh/id_ed25519" -o IdentitiesOnly=yes -o BatchMode=yes \
  -o ConnectTimeout=20 -o StrictHostKeyChecking=accept-new \
  -o "ProxyCommand=nc -X connect -x hatch-egress-proxy:3130 %h %p" \
  "$src" wbic16@"$ip":"$dst"
