#!/bin/sh
rm -rf m5out
gcc  -nostdlib -no-pie dolma_spec_store_standalone.s -o dolma_spec_store_standalone.out || exit 1
/code/gem5-docker/build/X86/gem5.opt --debug-flags=Checkpoint,DumpTLBWithCaches /code/gem5-docker/configs/example/se.py --ruby --cmd dolma_spec_store_standalone.out --cpu-type DerivO3CPU --cpu-clock 2GHz --sys-clock 2GHz --l1d_size 32kB --l1d_assoc 8 --l1i_size 32kB --l1d_assoc 8 --l2_size 2MB --l2_assoc 16 --l2cache --caches --needsTSO=1 --STT=1 --implicit_channel=1 --threat_model=Futuristic --dump-caches
cat m5out/tags.*/m5.tag
