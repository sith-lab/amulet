.intel_syntax noprefix
LEA R14, [R14 + 40] # instrumentation
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
AND RSI, 0b111111111111 # instrumentation
AND word ptr [R14 + RSI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
LEA R14, [R14 - 40] # instrumentation
