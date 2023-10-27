set -v

cd ${NOOP_HOME}
git apply ${XS_PROJECT_ROOT}/tutorial/emu-bug.patch
make clean
make emu EMU_THREADS=4 EMU_TRACE=1 MFC=1 -j16

cp ${NOOP_HOME}/build/emu ${XS_PROJECT_ROOT}/tutorial/emu-bug

git apply -R ${XS_PROJECT_ROOT}/tutorial/emu-bug.patch
