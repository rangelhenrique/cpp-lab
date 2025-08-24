#!/usr/bin/env bash
set -e
case "$1" in
  conf)   cmake -S . -B build ;;                             # configura
  build|b) cmake --build build -j ;;                         # compila
  run)    ./build/app ;;                                     # executa
  all|"") cmake -S . -B build && cmake --build build -j && ./build/app ;;  # tudo
  clean)  rm -rf build ;;                                    # limpa build
  *) echo "Uso: $0 [conf|build|b|run|all|clean]"; exit 1 ;;
esac