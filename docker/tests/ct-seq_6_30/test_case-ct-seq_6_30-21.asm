.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 70 
XCHG RDI, RCX 
MOVZX ESI, DL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -65 
ADC SIL, 104 
DEC AX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
MOVZX RCX, BX 
MOVZX EAX, BL 
LOOP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
OR SI, 0b1000000000000000 # instrumentation
BSF AX, SI 
CMP SIL, -14 
CMP CX, -43 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 55 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RAX] 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
CMP RDX, -33 
MOV BL, -22 
IMUL DI 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 96 # instrumentation
SBB ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
ADD SIL, 126 # instrumentation
CMOVNZ RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
