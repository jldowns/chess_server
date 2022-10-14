docker run \
    -it \
    --workdir="/home" \
    -p 8000:1233 \
    ron-chess \
    python ./chess_server.py 
