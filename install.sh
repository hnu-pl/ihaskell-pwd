## run this inside docker to install dependencies

# specify space sparated list of packages you need here

DEPS="unbound-generics tree-view"

if [ -d "/opt/stack/snapshots" ]; then
	if [ -d ".snapshots" ]; then
		stack install $DEPS
	else
	       	mv /opt/stack/snapshots "$PWD/.snapshots" && ln -s "$PWD/.snapshots" /opt/stack/snapshots && stack install $DEPS
	fi
else
	echo "Directory /opt/stack/snapshots does not exist."
fi
