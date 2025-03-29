export SPEC2017_PATH=/code/bmarks/ubuntu2204/spec2017; # SPEC 2017
export GEM5_PATH=/code/gem5-docker;
export GEM5_PERF_ROOT=/code/gem5_perf;

# Set up
# cd /code/gem5-docker;
# export CORES=$(( `nproc --all` + 1));
# python3 `which scons` -j$CORES build/X86/gem5.opt --default=X86 --ignore-style;
# echo "Done compiling gem5"
# ./build/X86/gem5.opt configs/learning_gem5/part1/simple.py # gem5 Hello World!

#/code/gem5-docker/exp_script/ckptscript.sh gcc_r
#/code/gem5-docker/exp_script/run_spec_from_ckpt.sh gcc_r UnsafeBaseline

for i in perlbench_r perlbench_s gcc_r gcc_s mcf_r mcf_s omnetpp_r omnetpp_s xalancbmk_r xalancbmk_s x264_r x264_s deepsjeng_r deepsjeng_s leela_r leela_s exchange2_r exchange2_s xz_r xz_s bwaves_r bwaves_s cactuBSSN_r cactuBSSN_s namd_r parest_r povray_r lbm_r lbm_s wrf_r wrf_s blender_r cam4_r cam4_s pop2_s imagick_r imagick_s nab_r nab_s fotonik3d_r fotonik3d_s roms_r roms_s specrand_fs specrand_fr specrand_is specrand_ir; do
    /code/gem5-docker/exp_script/ckptscript_spec2017.sh $i &
done

sleep 10s

while [ $(pgrep -c "gem5") -gt 0 ]; do
    sleep 10s
done

# for i in perlbench_r perlbench_s gcc_r gcc_s mcf_r mcf_s omnetpp_r omnetpp_s xalancbmk_r xalancbmk_s x264_r x264_s deepsjeng_r deepsjeng_s leela_r leela_s exchange2_r exchange2_s xz_r xz_s bwaves_r bwaves_s cactuBSSN_r cactuBSSN_s namd_r parest_r povray_r lbm_r lbm_s wrf_r wrf_s blender_r cam4_r cam4_s pop2_s imagick_r imagick_s nab_r nab_s fotonik3d_r fotonik3d_s roms_r roms_s specrand_fs specrand_fr specrand_is specrand_ir; do
#     /code/gem5-docker/exp_script/run_spec2017_from_ckpt.sh $i unsafebaseline &
# done

# SpecLFB only has yes/no for protection
for i in perlbench_r perlbench_s gcc_r gcc_s mcf_r mcf_s omnetpp_r omnetpp_s xalancbmk_r xalancbmk_s x264_r x264_s deepsjeng_r deepsjeng_s leela_r leela_s exchange2_r exchange2_s xz_r xz_s bwaves_r bwaves_s cactuBSSN_r cactuBSSN_s namd_r parest_r povray_r lbm_r lbm_s wrf_r wrf_s blender_r cam4_r cam4_s pop2_s imagick_r imagick_s nab_r nab_s fotonik3d_r fotonik3d_s roms_r roms_s specrand_fs specrand_fr specrand_is specrand_ir; do
    /code/gem5-docker/exp_script/run_spec2017_from_ckpt.sh $i Speclfb &
done

# Try for patched version as well


