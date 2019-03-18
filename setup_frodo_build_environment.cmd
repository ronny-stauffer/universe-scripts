@echo off

call setup_docker

docker run -i -t -v /o/wir-entwickeln/frodo:/o/wir-entwickeln/frodo -w /o/wir-entwickeln/frodo --rm tinkerforge/build_environment_c