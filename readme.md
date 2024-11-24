PPoPP_Artifact_TurboFFT
├── Common # cuda_samples, cuda_helper.h, helper_functions.h
├── run.sh # one-command run script
└── TurboFFT
    ├── artifact_data
    │   ├── cuFFT_data # Prestored, no need to run, 需要添加T4的数据
    │   │   ├── Benchmark=1_cuFFT_FP32.csv
    │   │   ├── Benchmark=1_cuFFT_FP32_FT_OFFLINE.csv
    │   │   ├── Benchmark=1_cuFFT_FP64.csv
    │   │   ├── Benchmark=1_cuFFT_FP64_FT_OFFLINE.csv
    │   │   ├── Benchmark=2_cuFFT_FP32.csv
    │   │   ├── Benchmark=2_cuFFT_FP64.csv
    │   │   ├── Benchmark=2_Offline_FP32_ERR.csv
    │   │   └── Benchmark=2_Offline_FP64_ERR.csv
    │   ├── TurboFFT_data # Data benchmarked by run.sh, 需要补充thread_level ABFT
    │   │   ├── Benchmark=1_TurboFFT_FP32.csv
    │   │   ├── Benchmark=1_TurboFFT_FP32_FT_BS=1.csv
    │   │   ├── Benchmark=1_TurboFFT_FP32_FT_BS=2.csv
    │   │   ├── Benchmark=1_TurboFFT_FP32_FT_BS=4.csv
    │   │   ├── Benchmark=1_TurboFFT_FP32_FT_Thread.csv
    │   │   ├── Benchmark=1_TurboFFT_FP64.csv
    │   │   ├── Benchmark=1_TurboFFT_FP64_FT_BS=1.csv
    │   │   ├── Benchmark=1_TurboFFT_FP64_FT_BS=2.csv
    │   │   ├── Benchmark=1_TurboFFT_FP64_FT_BS=4.csv
    │   │   ├── Benchmark=1_TurboFFT_FP64_FT_Thread.csv
    │   │   ├── Benchmark=2_TurboFFT_FP32.csv
    │   │   ├── Benchmark=2_TurboFFT_FP32_ERR_BS=32.csv
    │   │   ├── Benchmark=2_TurboFFT_FP32_FT_BS=1.csv
    │   │   ├── Benchmark=2_TurboFFT_FP64.csv
    │   │   ├── Benchmark=2_TurboFFT_FP64_ERR_BS=32.csv
    │   │   └── Benchmark=2_TurboFFT_FP64_FT_BS=1.csv
    │   └── vkFFT.pt # Prestored, no need to run, 需要添加T4的数据
    ├── artifact_figures # Reproduced figures by running run.sh, file name corresponds to figures id in the paper.
    │   ├── figure10.pdf
    │   ├── figure11.pdf
    │   ├── figure12.pdf
    │   ├── figure13.pdf
    │   ├── figure14.pdf
    │   ├── figure16.pdf
    │   ├── figure17.pdf
    │   ├── figure18.pdf
    │   ├── figure19.pdf
    │   ├── figure1.pdf
    │   └── figure20.pdf
    ├── CMakeLists.txt
    ├── include 
    │   ├── code_gen # Code generation module
    │   │   ├── generated # generated cuda kernels.
    │   │   │   ├── double2
    │   │   │   └── float2
    │   │   └── scripts # Template based code generation script
    │   │       ├── fft_codegen.py
    │   │       ├── __init__.py
    │   │       └── main_codegen.py
    │   ├── cufft # Modules for cuFFT and offline ABFT
    │   │   ├── cufft_ft.h
    │   │   ├── cufft.h
    │   │   └── reduction.cuh
    │   ├── param # Kernel parameters for template based code generation
    │   │   ├── A100
    │   │   │   ├── param_double2.csv
    │   │   │   └── param_float2.csv
    │   │   └── T4
    │   │       ├── param_double2.csv
    │   │       └── param_float2.csv
    │   ├── turbofft # TurboFFT related macros
    │   ├── TurboFFT.h # TurboFFT header file
    │   ├── TurboFFT_radix_2_template.h # TurboFFT cuda kernel header file
    │   └── utils # TurboFFT utils
    ├── main.cu # TurboFFT entry point
    ├── plot_scripts # scripts to reproduce the figures in the PPoPP submission
    │   ├── plot_fig10.py
    │   ├── plot_fig11.py
    │   ├── plot_fig12.py
    │   ├── plot_fig13.py
    │   ├── plot_fig14.py
    │   ├── plot_fig16.py
    │   ├── plot_fig17.py
    │   ├── plot_fig18.py
    │   ├── plot_fig19.py
    │   ├── plot_fig1.py
    │   ├── plot_fig20.py
    │   ├── plot.py
    │   └── utils.py
    └── readme.md