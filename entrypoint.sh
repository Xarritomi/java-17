#!/bin/bash
cd /home/container

# Output Current Java Version
java -version ## only really needed to show what version is being used. Should be changed for different applications

# Replace Startup Variables
MODIFIED_STARTUP=`java -Xms128M -Xmx{{SERVER_MEMORY}}M -Dterminal.jline=false -Dterminal.ansi=true -jar {{SERVER_JARFILE}}`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}