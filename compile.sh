nvcc  -I/workspace/avijeev/cutlass/include -I/workspace/avijeev/cutlass/examples/common -I/workspace/avijeev/cutlass/build/include -I/workspace/avijeev/cutlass/tools/util/include -isystem=/usr/local/cuda/include  -O3 -DNDEBUG -Xcompiler=-fPIE   -DCUTLASS_ENABLE_TENSOR_CORE_MMA=1  -Xcompiler=-Wconversion -Xcompiler=-fno-strict-aliasing -gencode=arch=compute_80,code=[sm_80,compute_80], -std=c++17 -x cu test.cu -o test
