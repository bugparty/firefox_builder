#!/bin/bash
docker build -t firefox -f dockerfile.internal .
# -v /home/bowman/.mozbuild:/home/bowman/.mozbuild \
docker run -it --rm -v /home/bowman/.mozbuild:/home/bowman/.mozbuild \
 -v /home/bowman/.rustup:/home/bowman/.rustup \
-v /home/bowman/.cargo:/home/bowman/.cargo \
 -v /home/bowman/gecko_dev:/home/bowman/gecko_dev  firefox bash
