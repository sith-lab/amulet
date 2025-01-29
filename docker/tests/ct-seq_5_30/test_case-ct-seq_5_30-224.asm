.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDX] 
CMOVNB RCX, RSI 
ADC DX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RSI 
CMOVNBE CX, AX 
SBB RBX, -127 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 80 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -84 # instrumentation
SBB EAX, -59 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RSI] 
CMP BL, AL 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD AL, 55 
CMOVNB DX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
CMOVNZ RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DX 
CMP EDI, ECX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -39 
MOVZX ECX, CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RCX] 
ADD AX, 1983 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], SIL 
ADD BL, 126 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RSI 
CMOVNZ AX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
