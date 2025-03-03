#!/bin/bash

find ./build_web -mindepth 1 ! -regex '^./build_web/external\(/.*\)?' -delete
cd build_web

emcmake cmake .. -G Ninja -DGRAPHICS=GRAPHICS_API_OPENGL_ES3

cmake --build .