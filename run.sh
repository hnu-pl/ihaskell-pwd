### uncomment below if you want Jupiter Lab 
# LAB="--env JUPYTER_ENABLE_LAB=yes"

HOSTPORT=8765

if [ -z "$(ls -A ".snapshots" 2>/dev/null)" ]; then
	docker run --rm -p $HOSTPORT:8888 \
		-v "$PWD":/home/jovyan/pwd $LAB \
		--env JUPYTER_TOKEN=x --name ihaskell_notebook \
	       	crosscompass/ihaskell-notebook:latest
else
	docker run --rm -p $HOSTPORT:8888 \
		-v "$PWD":/home/jovyan/pwd $LAB \
	       	-v "$PWD/.snapshots":/opt/stack/snapshots \
		--env JUPYTER_TOKEN=x --name ihaskell_notebook \
	       	crosscompass/ihaskell-notebook:latest
fi
