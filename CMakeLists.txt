# Minimun version of CMake required
cmake_minimum_required(VERSION 3.20)

# Project Name
project(cpp_lab_replit VERSION 0.1.0 LANGUAGES CXX)

# Define C++-20 standard for all files
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


# --- Biblioteca (crie primeiro, depois use) ---
add_library(mylib src/mylib.cpp)
target_include_directories(mylib PUBLIC ${CMAKE_SOURCE_DIR}/include)

# --- Executável principal ---
add_executable(app src/main.cpp)
target_link_libraries(app PRIVATE mylib)

# --- Qualidade: avisos fortes (como erro) ---
target_compile_options(mylib PRIVATE
    $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic -Werror>
    $<$<CXX_COMPILER_ID:MSVC>:/W4 /WX>
)
target_compile_options(app PRIVATE
    $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic -Werror>
    $<$<CXX_COMPILER_ID:MSVC>:/W4 /WX>
)

#Project version 


# --- Teste simples com CTest: valida a saída do programa ---
include(CTest)
enable_testing()
add_test(NAME app_runs COMMAND $<TARGET_FILE:app>)
set_tests_properties(app_runs PROPERTIES
  PASS_REGULAR_EXPRESSION "Hello, Henrique!.*4 \\+ 8 = 12"
  )