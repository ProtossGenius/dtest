cmake_minimum_required(VERSION 3.8)
project(smdtest)
set(CXX_FLAGS
        -g
        # -DVALGRIND
        -DCHECK_PTHREAD_RETURN_VALUE
        -D_FILE_OFFSET_BITS=64
        -Wall
        -Wextra
        -Werror
        -Wconversion
        -Wno-unused-parameter
        -Wold-style-cast
        -Woverloaded-virtual
        -Wpointer-arith
        -Wshadow
        -Wwrite-strings
        -march=native
        # -MMD
        -rdynamic
        )

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
include_directories(. "./third_part/include")
link_directories(. "./third_part/lib")

aux_source_directory(. src_files)
add_library(smdtest ${src_files})

#add_executable(dtest.run main.cpp)

#target_link_libraries(dtest.run smncpp)


install (TARGETS smdtest DESTINATION lib)
install (FILES action.h business.h costom_action.h process.h strategy.h user.h user_manager.h
   	DESTINATION include/smdtest)
