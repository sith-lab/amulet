.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 11 # instrumentation
SETO DL 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 6 
MOVZX AX, DL 
XADD SI, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], EBX 
OR SIL, -60 
CMP RAX, -911802761 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
CMOVNP RDX, RCX 
CMOVNL RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RCX 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -48 
OR DIL, BL 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
OR EAX, 1653518372 
SUB EAX, -607411083 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 565365282 
CMOVB AX, CX 
MOV DL, AL 
ADC RAX, RSI 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 75 # instrumentation
ADC AL, -74 
SBB DL, AL 
AND RDX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ECX 
TEST AX, CX 
OR AX, 24472 
AND RBX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RBX] 
ADC DI, DI 
NOT CX 
MOV CL, 6 
INC CL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], SI 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
SBB AX, -17846 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
IMUL ECX 
BSWAP EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
