## run this inside docker

DEPS=unbound-generics

if [ -d "/opt/stack/snapshots" ]; then
	if [ -d ".snapshots" ]; then
		stack install $DEPS
	else
	       	mv /opt/stack/snapshots "$PWD/.snapshots" && ln -s "$PWD/.snapshots" /opt/stack/snapshots && stack install $DEPS
	fi
else
	echo "Directory /opt/stack/snapshots does not exist."
fi
