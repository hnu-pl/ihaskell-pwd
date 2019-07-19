## run this inside docker
if [ -d "/opt/stack/snapshots" ]; then
	if [ -d ".snapshots" ]; then
		stack build
	else
	       	mv /opt/stack/snapshots "$PWD/.snapshots" && ln -s "$PWD/.snapshots" /opt/stack/snapshots && stack build
	fi
else
	echo "Directory /opt/stack/snapshots does not exist."
fi
