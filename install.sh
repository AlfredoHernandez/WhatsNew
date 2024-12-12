#!/bin/bash

function check_installed {
    if which $1 >/dev/null; then
        echo "$1 installed ✅"
        return 0
    else
        echo "$1 NOT installed ❌"
        return 1
    fi
}

function install_swiftformat {
    # https://github.com/nicklockwood/SwiftFormat
    brew install swiftformat
}

echo "[+] Installing dependencies ..."

if ! check_installed swiftformat; then
    install_swiftformat
fi

echo "[+] Installing pre-commit hooks ..."
cp scripts/pre-commit .git/hooks/pre-commit

echo "[+] Done ✅"
