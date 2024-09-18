# Port mapping: Map port 1 on the Docker host (your machine) to TCP port 2 in the container.
# For volume mapping, use "/" on mac and linux and "\" on windows.
# Run the container from the bash shell with 
docker run -it \
    --name duckdb_container \
    -v ./duckdb/code:/code \
    -v ./duckdb/data:/data \
	duckdb bash

# Once in the bash terminal, Run duckdb with the database you want to use
./duckdb data/databases/enceladus.db
