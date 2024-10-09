cmake_minimum_required(VERSION 3.10)

project(SGEMM)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_ARCHITECTURES "80")

enable_language(CUDA)

add_subdirectory(./cutlass)

add_executable(main
    src/main.cu
)
set_target_properties(main PROPERTIES CUDA_ARCHITECTURES "80")
target_include_directories(main PUBLIC
    ./cutlass/include
    ./cutlass/tools/util/include
    ./cutlass/tools/library/include
    ./cutlass/examples/common
    ${CUDA_INCLUDE_DIRS}
)
