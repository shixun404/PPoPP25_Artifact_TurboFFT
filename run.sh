export CUDA_SAMPLES_COMMON=$(pwd)/Common
gpu=A100
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
cmake ..
make -j

./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 0 --if_ft  0  --if_err 0 > Benchmark=1_TurboFFT_FP32.csv
./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 0 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP32_FT_BS=1.csv
./turbofft --if_bench 1  --thread_bs 2 --gpu A100 --datatype 0 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP32_FT_BS=2.csv
./turbofft --if_bench 1  --thread_bs 4 --gpu A100 --datatype 0 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP32_FT_BS=4.csv

./turbofft --if_bench 2  --thread_bs 1 --gpu A100 --datatype 0 --if_ft  0  --if_err 0 > Benchmark=2_TurboFFT_FP32.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu A100 --datatype 0 --if_ft  1  --if_err 0 > Benchmark=2_TurboFFT_FP32_FT_BS=1.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu A100 --datatype 0 --if_ft  1  --if_err 1 > Benchmark=2_TurboFFT_FP32_ERR_BS=32.csv

./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 1 --if_ft  0  --if_err 0 > Benchmark=1_TurboFFT_FP64.csv
./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 1 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP64_FT_BS=1.csv
./turbofft --if_bench 1  --thread_bs 2 --gpu A100 --datatype 1 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP64_FT_BS=2.csv
./turbofft --if_bench 1  --thread_bs 4 --gpu A100 --datatype 1 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP64_FT_BS=4.csv

./turbofft --if_bench 2  --thread_bs 1 --gpu A100 --datatype 1 --if_ft  0  --if_err 0 > Benchmark=2_TurboFFT_FP64.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu A100 --datatype 1 --if_ft  1  --if_err 0 > Benchmark=2_TurboFFT_FP64_FT_BS=1.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu A100 --datatype 1 --if_ft  1  --if_err 1 > Benchmark=2_TurboFFT_FP64_ERR_BS=32.csv

cp *.csv ../artifact_data

cd ../plot_scripts
python3 plot.py
python3 plot_fig1.py
python3 plot_fig10.py
python3 plot_fig11.py
python3 plot_fig12.py
python3 plot_fig13.py
python3 plot_fig14.py
python3 plot_fig16.py
python3 plot_fig17.py
python3 plot_fig18.py
python3 plot_fig19.py
python3 plot_fig20.py
