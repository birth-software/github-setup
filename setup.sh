#!/usr/bin/env bash

BIRTH_NATIVE_OS_STRING=$OSTYPE

case "$BIRTH_NATIVE_OS_STRING" in
    darwin*) BIRTH_OS="macos";;
    linux*) BIRTH_OS="linux";;
    msys*) BIRTH_OS="windows";;
    *) exit 1
esac

BIRTH_NATIVE_ARCH_STRING="$(uname -m)"

case "$BIRTH_NATIVE_ARCH_STRING" in
    x86_64) BIRTH_ARCH="x86_64";;
    arm64) BIRTH_ARCH="aarch64";;
    *) exit 1
esac

echo "BIRTH_NATIVE_OS_STRING=$BIRTH_NATIVE_OS_STRING" >> $GITHUB_ENV
echo "BIRTH_NATIVE_ARCH_STRING=$BIRTH_NATIVE_ARCH_STRING" >> $GITHUB_ENV
echo "BIRTH_OS=$BIRTH_OS" >> $GITHUB_ENV
echo "BIRTH_ARCH=$BIRTH_ARCH" >> $GITHUB_ENV
