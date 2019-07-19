if [ -z "$(ls -A ".snapshots" 2>/dev/null)" ]; then
	docker run --rm -p 8888:8888 \
		-v "$PWD":/home/jovyan/pwd \
		--env JUPYTER_TOKEN=x --name ihaskell_notebook \
	       	crosscompass/ihaskell-notebook:latest
else
	docker run --rm -p 8888:8888 \
		-v "$PWD":/home/jovyan/pwd -v "$PWD/.snapshots":/opt/stack/snapshots \
		--env JUPYTER_TOKEN=x --name ihaskell_notebook \
	       	crosscompass/ihaskell-notebook:latest
fi
