project(MY_LLVM_PASSES)
cmake_minimum_required(VERSION 2.8)

find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

if ("${LLVM_PACKAGE_VERSION}")
	message(FATAL_ERROR "Need LLVM >= 3.5")
endif()

include_directories("${LLVM_INCLUDE_DIRS}")
message(STATUS "LLVM_INCLUDE_DIRS is ${LLVM_INCLUDE_DIRS}")
message(STATUS "LLVM_TOOLS_BINARY_DIR is ${LLVM_TOOLS_BINARY_DIR}")

add_definitions(${LLVM_DEFINITIONS})

include(CheckCXXCompilerFlag)
macro(add_cxx_flag flag name)
    CHECK_CXX_COMPILER_FLAG(${flag} "${name}_SUPPORTED")
    if("${name}_SUPPORTED")
        add_definitions(${flag})
    else()
        message(FATAL_ERROR "${flag} flag is not supported by ${CMAKE_CXX_COMPILER}")
    endif()
endmacro()

if (NOT LLVM_ENABLE_RTTI)
    message(STATUS "LLVM was built without RTTI, so we must disable it too for linking to work properly")
    add_cxx_flag(-fno-rtti RTTI)
endif()
add_cxx_flag(-std=c++11 CXX11)

add_subdirectory(NullCheckDCEPass)
