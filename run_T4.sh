export CUDA_SAMPLES_COMMON=$(pwd)/Common
gpu=T4
cd TurboFFT
cd include/code_gen/scripts
python fft_codegen.py --gpu $gpu --datatype float2
python fft_codegen.py --gpu $gpu --datatype float2 --if_thread_ft 1
python fft_codegen.py --gpu $gpu --datatype float2  --if_ft 1
python fft_codegen.py --gpu $gpu --datatype float2 --if_ft 1 --if_err_injection 1
python fft_codegen.py --gpu $gpu --datatype double2
python fft_codegen.py --gpu $gpu --datatype double2 --if_thread_ft 1
python fft_codegen.py --gpu $gpu --datatype double2  --if_ft 1
python fft_codegen.py --gpu $gpu --datatype double2 --if_ft 1 --if_err_injection 1

cd -
mkdir build
cd build
cmake -DARCH_SM=75 ..
make -j

./turbofft --if_bench 1  --thread_bs 1 --gpu T4 --datatype 0 --if_thread_ft 0 --if_ft  0  --if_err 0 > T4_Benchmark=1_TurboFFT_FP32.csv

./turbofft --if_bench 2  --thread_bs 1 --gpu T4 --datatype 0 --if_thread_ft 0 --if_ft  0  --if_err 0 > T4_Benchmark=2_TurboFFT_FP32.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu T4 --datatype 0 --if_thread_ft 0 --if_ft  1  --if_err 0 > T4_Benchmark=2_TurboFFT_FP32_FT_BS=1.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu T4 --datatype 0 --if_thread_ft 0 --if_ft  1  --if_err 1 > T4_Benchmark=2_TurboFFT_FP32_ERR_BS=32.csv

cp *.csv ../artifact_data/TurboFFT_data

cd ../plot_scripts
python3 plot.py
python3 plot_fig21.py
python3 plot_fig22.py
