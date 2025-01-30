## Table 5: Smaller uarch structures

Run `Table_8_Smaller_uarch_structures.sh` - this will output to `Table_8_Results.txt`.
The output format will be

```
Smaller uarch structures - 200 programs
=== baseline ===
detected_violation: YES/NO
campaign_execution_time: <time in seconds>
=== reduced_cache ===
detected_violation: YES/NO
campaign_execution_time: <time in seconds>
=== reduced_cache_and_mshrs ===
detected_violation: YES/NO
campaign_execution_time: <time in seconds>
```

You can also provide the number of programs as an argument, e.g. `./Table_8_Smaller_uarch_structures.sh 10`,
if you want to try testing with a smaller number of programs first.
