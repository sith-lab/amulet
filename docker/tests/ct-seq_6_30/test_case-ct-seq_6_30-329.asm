.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -25 
AND RCX, 0b1111111111111 # instrumentation
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RBX] 
INC EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
CMOVL BX, SI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 6906 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
DEC DI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 94 
XCHG EBX, EDI 
JMP .bb_main.4 
.bb_main.4:
ADD RBX, RDX 
CMP EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 93 
JMP .bb_main.5 
.bb_main.5:
MOVSX RAX, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
IMUL EBX, EAX 
LEA SI, qword ptr [RSI + RDI] 
MOVSX RCX, AX 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
