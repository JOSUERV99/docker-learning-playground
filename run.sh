# to run function use
# `. ./run.sh && <functionName>`

create() {
    docker build -t course:example .
}

images() {
    docker images
}

run() {
    docker run -ti --rm course:example
}

rVolume() {
    docker run -ti --rm -v /files:/stuff course:example
}

rDaemon() {
    docker run -d course:example /bin/bash
}