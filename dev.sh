#!/usr/bin/env bash
set -e

# 1) Se o CMake não estiver disponível (ex.: recovery mode), usa nix-shell temporário
if ! command -v cmake >/dev/null 2>&1; then
  echo "[info] cmake não encontrado; usando nix-shell temporário…"
  nix-shell -p cmake gnumake gcc --run "cmake -S . -B build && cmake --build build -j && ./build/app && ctest --test-dir build --output-on-failure || true"
  exit $?
fi

# 2) Configura (só se precisar), compila e executa
([ -d build ] || cmake -S . -B build)
cmake --build build -j
./build/app

# 3) (opcional) roda testes CTest se existirem
ctest --test-dir build --output-on-failure || true
