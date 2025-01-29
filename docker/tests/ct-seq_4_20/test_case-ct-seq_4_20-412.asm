.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
ADC EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 12 
AND RDI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDX] 
CMOVS SI, AX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AX, 19837 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -86 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV EBX, -1816057731 
CMP AL, 51 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 94 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
