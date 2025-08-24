# CMake generated Testfile for 
# Source directory: /home/runner/workspace
# Build directory: /home/runner/workspace/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[app_runs]=] "/home/runner/workspace/build/app")
set_tests_properties([=[app_runs]=] PROPERTIES  PASS_REGULAR_EXPRESSION "Hello, Henrique!.*4 \\+ 8 = 12" _BACKTRACE_TRIPLES "/home/runner/workspace/CMakeLists.txt;36;add_test;/home/runner/workspace/CMakeLists.txt;0;")
