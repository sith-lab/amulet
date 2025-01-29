.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 11684 
CMOVNB RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RSI 
CMOVLE CX, BX 
CMP RCX, -37 
AND RCX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RCX] 
SUB EAX, 117557572 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -19 # instrumentation
CMOVNO BX, AX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
ADD SIL, -53 # instrumentation
JNB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
CMOVO RBX, RBX 
BSWAP ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDX], 111 
MOVSX RDX, DIL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], CL 
INC RCX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 116 # instrumentation
CMOVNBE EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -14 
AND RSI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1587868079 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 84 # instrumentation
CWDE  
CMOVNBE DI, DI 
NEG EDI 
IMUL DI, DI, 34 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 10 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
