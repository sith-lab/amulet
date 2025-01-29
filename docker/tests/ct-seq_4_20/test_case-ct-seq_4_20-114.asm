.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
CMP DX, -42 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -41 # instrumentation
ADC DL, 92 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
CMOVNO EBX, EDX 
MOVZX ECX, CL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
MUL EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
JMP .bb_main.2 
.bb_main.2:
CMP RSI, 4 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 6 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RDI] 
SBB EAX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
