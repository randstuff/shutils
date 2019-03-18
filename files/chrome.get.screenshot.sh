#!/bin/bash -x 



google-chrome --headless --disable-gpu --window-size=1920,1080 --screenshot=hello.png  $1 

# Size of a standard letterhead.
# chrome --headless --disable-gpu --screenshot --window-size=1280,1696 https://www.chromestatus.com/

# Nexus 5x
# chrome --headless --disable-gpu --screenshot --window-size=412,732 https://www.chromestatus.com/ 

