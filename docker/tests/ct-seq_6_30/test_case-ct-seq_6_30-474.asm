.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMOVNL RBX, RSI 
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
INC BL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 124 # instrumentation
CMOVO CX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -80 
CLD  
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 101 # instrumentation
MOV EBX, EDX 
ADC AX, 14702 
SBB AL, CL 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
CMOVL AX, AX 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
CMOVP SI, DI 
CMOVZ RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 75 
JNBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
NEG DIL 
SUB EAX, 359494501 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
OR BX, 0b1000000000000000 # instrumentation
BSF AX, BX 
JMP .bb_main.5 
.bb_main.5:
BSWAP EDI 
CMP AX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
