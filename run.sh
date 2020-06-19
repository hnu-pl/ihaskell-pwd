LAB="--env JUPYTER_ENABLE_LAB=yes"
TAG=8b7eb58cec8d
HOSTPORT=8888

docker run --rm -p $HOSTPORT:8888 $LAB \
	-v "$PWD":/home/jovyan/pwd \
	--env JUPYTER_TOKEN=x --name ihaskell_notebook \
       	crosscompass/ihaskell-notebook:$TAG
