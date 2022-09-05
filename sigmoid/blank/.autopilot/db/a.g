#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/unclebob/git/mlp_opt_hls/sigmoid/blank/.autopilot/db/a.g.bc ${1+"$@"}
