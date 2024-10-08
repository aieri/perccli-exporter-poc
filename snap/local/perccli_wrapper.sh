#!/bin/bash

CMD="$SNAP_COMMON/perccli64"
SHA256="ddb2dfddbcc1a863da434a323fe52247910b1ec2a26491e1dd7cc5fb9287c0c3"

if [ -x $CMD ]; then
    if echo "$SHA256  $CMD" | sha256sum -c --status; then
        $CMD $@
    else
        echo "The perccli binary found at $CMD isn't recognized"
    fi
else
    echo "Please download perccli and install it in the $SNAP_COMMON directory"
fi
