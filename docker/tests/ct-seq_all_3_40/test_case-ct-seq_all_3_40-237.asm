.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX SI, CL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 102 
TEST BL, 56 
XOR CL, DIL 
CMOVNLE EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
DEC CX 
CBW  
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -73 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -53 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RAX] 
ADD ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR SIL, 82 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], -4 
ADC DX, -112 
OR DL, 1 # instrumentation
AND DL, DIL 
IMUL RSI, RSI 
ADD DIL, -125 # instrumentation
CMOVNS SI, AX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -81 
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
MOV ESI, -973331991 
CMOVZ BX, CX 
STC  
SETNS AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -84 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
AND RAX, 54 
MOV BL, AL 
JMP .bb_main.2 
.bb_main.2:
MOV ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
ADD SI, 25 
SETNP DL 
MOV SIL, -108 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
