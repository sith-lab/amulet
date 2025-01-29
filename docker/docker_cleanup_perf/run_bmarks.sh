export SPEC_PATH=/code/bmarks/ubuntu1604/spec2k6
export GEM5_PATH=/code/gem5-docker
#/code/gem5-docker/exp_script/ckptscript.sh soplex
#/code/gem5-docker/exp_script/run_spec_from_ckpt.sh soplex UnsafeBaseline

###for i in perlbench bzip2 gcc bwaves mcf milc zeusmp gromacs cactusADM leslie3d namd gobmk soplex povray calculix hmmer sjeng\
### GemsFDTD libquantum h264ref tonto lbm omnetpp astar sphinx3; do
##for i in perlbench bzip2 gcc bwaves mcf milc zeusmp gromacs cactusADM leslie3d namd gobmk dealII soplex povray calculix hmmer sjeng GemsFDTD libquantum h264ref tonto lbm omnetpp astar sphinx3 xalancbmk ; do
##    /code/gem5-docker/exp_script/ckptscript.sh $i &
##done
##
##sleep 10s
##
##while [ $(pgrep -c "gem5") -gt 0 ]; do
##    sleep 10s
##done


for i in perlbench bzip2 gcc bwaves mcf milc zeusmp gromacs cactusADM leslie3d namd gobmk dealII soplex povray calculix hmmer sjeng GemsFDTD libquantum h264ref tonto lbm omnetpp astar sphinx3 xalancbmk ; do
    /code/gem5-docker/exp_script/run_spec_from_ckpt.sh $i UnsafeBaseline &
done

for i in perlbench bzip2 gcc bwaves mcf milc zeusmp gromacs cactusADM leslie3d namd gobmk dealII soplex povray calculix hmmer sjeng GemsFDTD libquantum h264ref tonto lbm omnetpp astar sphinx3 xalancbmk ; do
    /code/gem5-docker/exp_script/run_spec_from_ckpt.sh $i Cleanup_FOR_L1L2 &
done
