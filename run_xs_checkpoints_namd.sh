set -x
set -e

python3 env-scripts/perf/xs_autorun.py                                                          \
  /nfs-nvme/home/share/checkpoints_profiles/spec06_rv64gc_o2_20m/take_cpt                       \
  simpoint_namd.json \
  --xs $XS_PROJECT_ROOT/XiangShan --threads 8 --dir SPEC06_EmuTasks_MICRO_2022

