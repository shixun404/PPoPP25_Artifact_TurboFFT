export CUDA_SAMPLES_COMMON=$(pwd)/Common
gpu=A100
cd TurboFFT
mkdir build
cd build
cmake ..
make -j