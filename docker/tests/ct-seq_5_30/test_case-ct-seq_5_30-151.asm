.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 70 # instrumentation
SBB DIL, 25 
ADC CX, 100 
ADC SIL, -33 
CMOVB AX, DX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], DX 
SUB EAX, EAX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 1128947226 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], AX 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -837989069 
CMOVNO RDI, RAX 
MOVSX RDI, AL 
JMP .bb_main.3 
.bb_main.3:
STD  
IMUL CX, BX 
INC RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RCX] 
CMOVNO RDI, RAX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 5 # instrumentation
CMOVNL RDX, RAX 
CLC  
ADC RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
