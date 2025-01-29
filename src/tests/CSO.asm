.intel_syntax noprefix
.test_case_enter:
LFENCE

CLD # instrumentation
SUB CL, DL
AND RSI, 0b1111111111111 # instrumentation
SUB RAX, -1904627778
NEG AL
CMP EDX, -122
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 111
CMP SI, 117
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RCX, 0xff # instrumentation
ADD RCX, 1 # instrumentation
REPNE SCASD
MFENCE