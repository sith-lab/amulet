.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
IMUL AX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 34 
ADD EAX, -1946050440 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
SUB DI, BX 
IMUL RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 151359972 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
MOVSX RDI, AL 
ADD DX, BX 
MOV AX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDX] 
CMOVNBE RDI, RDI 
CMOVB CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
