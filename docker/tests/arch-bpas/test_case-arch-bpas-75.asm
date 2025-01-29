.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -78 # instrumentation
ADC AX, -28 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EAX 
SUB RBX, -91 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RSI 
OR EAX, 1317261716 
AND BL, SIL 
MOVZX RDI, CX 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
AND RSI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RSI] 
CMOVNBE ESI, EDX 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -64 # instrumentation
SETNLE AL 
SETNP DL 
LEA RSI, qword ptr [RBX + RDX + 9597] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
ADD SIL, 65 # instrumentation
SBB AX, 14536 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 81 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RAX] 
IMUL DX, DI, 86 
ADD SIL, 33 # instrumentation
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RSI] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
SBB EAX, ECX 
MOVSX ECX, CL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
ADD DL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 99 
TEST RAX, -702332206 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -31 # instrumentation
CMOVLE DX, DI 
NEG RAX 
MOVSX EDX, AL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
TEST DX, 27127 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RBX] 
CMP AL, -82 
SETZ DIL 
XOR BL, -122 
CMOVNP RAX, RAX 
AND BL, 30 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
