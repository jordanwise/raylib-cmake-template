

- Changed build_emcc to:

```
emcmake cmake .. -G Ninja -DGRAPHICS=GRAPHICS_API_OPENGL_ES3
```

- Used server_with_cors_coop_coem.py

- Removed PROXY_TO_PTHREAD as glfw cannot be initialised from a pThread - see https://github.com/emscripten-core/emscripten/issues/23289#issuecomment-2569577793


## Building desktop

```
mkdir build
cd build
cmake ..
cmake --build .
./Debug/my_raylib_game.exe

## Building emcc
```
source ../../emsdk/emsdk_env.sh
./build_emcc.sh
./run_emcc.sh

```