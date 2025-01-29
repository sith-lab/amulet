.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
MUL RBX 
NEG CL 
SBB RBX, RCX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], BX 
AND RDI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RDI] 
MOV DIL, 47 
AND RDX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -95 # instrumentation
MOVZX EAX, CL 
CMC  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 102 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
SUB RAX, -1621120955 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RAX] 
BSWAP RDI 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 123 
INC RBX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RAX 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 46 
CMOVNBE EAX, EDX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -66 # instrumentation
CMOVNB AX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
MOVSX EDI, BX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
