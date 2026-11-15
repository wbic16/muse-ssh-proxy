# muse-ssh-proxy

`sshn.sh` and `scpn.sh`: the standard SSH/SCP hop from the Muse VM to the
ranch nodes, over Tailscale IPs through the egress proxy (port 3130), with
the VM's Ed25519 key passed explicitly. Nearly all ranch work — builds,
probes, Choir coordination — reaches the nodes through these two scripts.

Live copies run from `~/workspace/wavefront/viz14/cluster/` on the Muse VM.
