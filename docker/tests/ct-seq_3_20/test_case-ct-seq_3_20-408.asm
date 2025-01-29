.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 36 # instrumentation
ADC SIL, BL 
XCHG DI, AX 
CMOVNB RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDI] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDX 
ADD DIL, -73 # instrumentation
SBB EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RSI] 
IMUL DL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DIL 
IMUL EDX, EAX, 21 
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
