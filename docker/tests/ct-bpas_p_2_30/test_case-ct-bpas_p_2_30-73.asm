.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
MOVZX RSI, DL 
SBB DIL, 36 
SUB AX, 183 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
NEG DL 
MOV SIL, -7 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -103 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
NEG CX 
ADC DL, BL 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DIL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -1 # instrumentation
CMOVB RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX], 56 
DEC EBX 
CMOVNO RSI, RAX 
ADD ESI, -91 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RAX] 
CMP BX, -6 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RBX] 
STD  
XCHG ESI, ECX 
DEC CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -126 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
