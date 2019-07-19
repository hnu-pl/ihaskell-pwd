BROWSER="/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"
IPADDR=$(ip addr show dev eth0 | grep 'inet ' | sed 's/.*inet //' | cut -f1 -d'/')
PORT=8888

"$BROWSER" $IPADDR:$PORT
