git clone https://github.com/DTolm/VkFFT.git
cp CMakeLists_VkFFT.txt VkFFT/CMakeLists.txt
cd VkFFT
mkdir build
cd build
cmake -DVKFFT_BACKEND=1 ..
make -j
cp ../../test_VkFFT.py .
python test_VkFFT.py
cp vkFFT.pt TurboFFT/artifact_data/VkFFT_data/