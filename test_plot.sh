export CUDA_SAMPLES_COMMON=$(pwd)/Common
gpu=A100
cd TurboFFT
cd build

cp Benchmark=1_cuFFT_FP32_FT_OFFLINE.csv ../artifact_data/cuFFT_data
cp Benchmark=1_cuFFT_FP32.csv  ../artifact_data/cuFFT_data
cp Benchmark=1_cuFFT_FP64_FT_OFFLINE.csv  ../artifact_data/cuFFT_data
cp Benchmark=1_cuFFT_FP64.csv  ../artifact_data/cuFFT_data
cp Benchmark=2_cuFFT_FP32.csv  ../artifact_data/cuFFT_data
cp Benchmark=2_cuFFT_FP64.csv  ../artifact_data/cuFFT_data
cp Benchmark=2_Offline_FP32_ERR.csv  ../artifact_data/cuFFT_data
cp Benchmark=2_Offline_FP64_ERR.csv ../artifact_data/cuFFT_data

cp Benchmark=1_TurboFFT_FP32_FT_BS=1.csv ../artifact_data/TurboFFT_data
cp Benchmark=1_TurboFFT_FP32_FT_BS=2.csv ../artifact_data/TurboFFT_data
cp Benchmark=1_TurboFFT_FP32_FT_BS=4.csv ../artifact_data/TurboFFT_data
cp Benchmark=1_TurboFFT_FP32_FT_Thread.csv ../artifact_data/TurboFFT_data
cp Benchmark=1_TurboFFT_FP32.csv ../artifact_data/TurboFFT_data
cp Benchmark=1_TurboFFT_FP64_FT_BS=1.csv ../artifact_data/TurboFFT_data
cp Benchmark=1_TurboFFT_FP64_FT_BS=2.csv ../artifact_data/TurboFFT_data
cp Benchmark=1_TurboFFT_FP64_FT_BS=4.csv ../artifact_data/TurboFFT_data
cp Benchmark=1_TurboFFT_FP64_FT_Thread.csv ../artifact_data/TurboFFT_data
cp Benchmark=1_TurboFFT_FP64.csv ../artifact_data/TurboFFT_data
cp Benchmark=2_TurboFFT_FP32_ERR_BS=32.csv  ../artifact_data/TurboFFT_data
cp Benchmark=2_TurboFFT_FP32_FT_BS=1.csv ../artifact_data/TurboFFT_data
cp Benchmark=2_TurboFFT_FP32.csv  ../artifact_data/TurboFFT_data
cp Benchmark=2_TurboFFT_FP64_ERR_BS=32.csv  ../artifact_data/TurboFFT_data
cp Benchmark=2_TurboFFT_FP64_FT_BS=1.csv ../artifact_data/TurboFFT_data
cp Benchmark=2_TurboFFT_FP64.csv ../artifact_data/TurboFFT_data

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
