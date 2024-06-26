 #!/usr/bin/env bash

 # Execute this file to install the aidp cli tools into your path on OS X

 CURRENT_LOC="$( cd "$(dirname "$0")" ; pwd -P )"
 LOCATION=${CURRENT_LOC%Aidp-Qt.app*}

 # Ensure that the directory to symlink to exists
 sudo mkdir -p /usr/local/bin

 # Create symlinks to the cli tools
 sudo ln -s ${LOCATION}/Aidp-Qt.app/Contents/MacOS/aidpd /usr/local/bin/aidpd
 sudo ln -s ${LOCATION}/Aidp-Qt.app/Contents/MacOS/aidp-cli /usr/local/bin/aidp-cli
