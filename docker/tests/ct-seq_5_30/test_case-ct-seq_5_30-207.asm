.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -94 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NEG DL 
ADC AL, -49 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RSI] 
CMP AL, 29 
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
CMOVNB RAX, RAX 
CMOVNBE ESI, EDI 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
CMOVZ RBX, RBX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -14 
CMOVBE RDX, RDI 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
IMUL BX, SI, 25 
ADD SIL, -40 # instrumentation
CMOVZ DI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RSI] 
CMOVNLE CX, BX 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 80 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
MUL BL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX], -118 
AND RSI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RSI] 
MOVSX RBX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
