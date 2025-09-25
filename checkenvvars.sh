#!/bin/bash

curl https://raw.githubusercontent.com/ptitSeb/box64/refs/heads/main/docs/USAGE.md | grep "### BOX64" | awk '{print $2}' | grep -f "TRACE" > envvars.box64 &>/dev/null
cat darkos_dynarec_extra.conf | awk -F '"' '{print $2}' > actual.envvars.box64 && cat darkos_dynarec.conf | awk -F '"' '{print $2}' >> actual.envvars.box64 &>/dev/null
grep -Fxv -f actual.envvars.box64 -f envvars.box64.noworth envvars.box64