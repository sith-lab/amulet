## Table 4: Different uarch trace formats

This should be run inside of the InvisiSpec docker container (although `--InvisiSpec_UnsafeBaseline`
is passed to the fuzzer to disable InvisiSpec's protections). It can be started with:

```
cd amulet/docker
./dockerRun.sh invisispec start
docker attach invisispec
```

Run `Table_4_uarch_trace_formats.sh` - this will output a LaTeX document containing the table to `Table_4_Results.tex`,
and a plaintext listing to `Table_4_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_4_uarch_trace_formats.sh 10`,
if you want to try testing with a smaller number of programs first.


## Table 6: Smaller uarch structures

This should be run inside of the InvisiSpec docker container.

Run `Table_6_Smaller_uarch_structures.sh` - this will output a LaTeX document containing the table to
`Table_6_Results.tex` and a plaintext listing to `Table_6_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_6_Smaller_uarch_structures.sh 10`,
if you want to try testing with a smaller number of programs first.
