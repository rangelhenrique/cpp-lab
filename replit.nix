{ pkgs }:
{
	deps = [
		pkgs.cmake
		pkgs.gcc
		pkgs.gnumake
	];
}

run = "cmake -S . -B build && cmake --build build -j && ./build/app"