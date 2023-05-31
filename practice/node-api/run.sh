# to run function use
# `. ./run.sh && <functionName>`

create() {
    docker build -t node-api:example .
}

run() {
    docker run -ti --rm -p 8000:5000 node-api:example
}