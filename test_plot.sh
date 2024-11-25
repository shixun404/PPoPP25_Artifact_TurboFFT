export CUDA_SAMPLES_COMMON=$(pwd)/Common
gpu=A100
cd TurboFFT
mkdir build
cd build
cp *.csv ../artifact_data/TurboFFT_data

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
