cd TurboFFT/build
./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 0 --if_thread_ft 0 --if_ft  0  --if_err 0 > Benchmark=1_TurboFFT_FP32.csv
./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 0 --if_thread_ft 1 --if_ft  0  --if_err 0 > Benchmark=1_TurboFFT_FP32_FT_Thread.csv
./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 0 --if_thread_ft 0 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP32_FT_BS=1.csv
./turbofft --if_bench 1  --thread_bs 2 --gpu A100 --datatype 0 --if_thread_ft 0 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP32_FT_BS=2.csv
./turbofft --if_bench 1  --thread_bs 4 --gpu A100 --datatype 0 --if_thread_ft 0 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP32_FT_BS=4.csv

./turbofft --if_bench 2  --thread_bs 1 --gpu A100 --datatype 0 --if_thread_ft 0 --if_ft  0  --if_err 0 > Benchmark=2_TurboFFT_FP32.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu A100 --datatype 0 --if_thread_ft 0 --if_ft  1  --if_err 0 > Benchmark=2_TurboFFT_FP32_FT_BS=1.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu A100 --datatype 0 --if_thread_ft 0 --if_ft  1  --if_err 1 > Benchmark=2_TurboFFT_FP32_ERR_BS=32.csv

./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 1 --if_thread_ft 0 --if_ft  0  --if_err 0 > Benchmark=1_TurboFFT_FP64.csv
./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 1 --if_thread_ft 1 --if_ft  0  --if_err 0 > Benchmark=1_TurboFFT_FP64_FT_Thread.csv
./turbofft --if_bench 1  --thread_bs 1 --gpu A100 --datatype 1 --if_thread_ft 0 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP64_FT_BS=1.csv
./turbofft --if_bench 1  --thread_bs 2 --gpu A100 --datatype 1 --if_thread_ft 0 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP64_FT_BS=2.csv
./turbofft --if_bench 1  --thread_bs 4 --gpu A100 --datatype 1 --if_thread_ft 0 --if_ft  1  --if_err 0 > Benchmark=1_TurboFFT_FP64_FT_BS=4.csv

./turbofft --if_bench 2  --thread_bs 1 --gpu A100 --datatype 1 --if_thread_ft 0 --if_ft  0  --if_err 0 > Benchmark=2_TurboFFT_FP64.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu A100 --datatype 1 --if_thread_ft 0 --if_ft  1  --if_err 0 > Benchmark=2_TurboFFT_FP64_FT_BS=1.csv
./turbofft --if_bench 2  --thread_bs 4 --gpu A100 --datatype 1 --if_thread_ft 0 --if_ft  1  --if_err 1 > Benchmark=2_TurboFFT_FP64_ERR_BS=32.csv