#!/usr/bin/env bash

set -euxo pipefail

cat >> Cargo.toml <<EOF
[package.metadata.binstall.signing]
algorithm = "minisign"
pubkey = "$(tail -n1 minisign.pub)"
EOF

