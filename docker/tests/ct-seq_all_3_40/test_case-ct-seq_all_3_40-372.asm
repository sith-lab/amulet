.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
TEST RDX, -1119598515 
AND RDX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 104 
OR EAX, 1045297837 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DIL 
CMOVNB EDI, EDI 
AND AL, -95 
CMOVNZ RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI], 13 
ADD SIL, 47 # instrumentation
MOVSX RSI, SIL 
CMOVNZ EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RAX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RBX 
SETNO BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 57 
CMP BL, BL 
NOT DL 
XOR RCX, RSI 
AND CX, -81 
CLD  
ADD EDI, ESI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -3 
IMUL RAX, RDI, -115 
CMOVNO RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
OR EDX, 1 # instrumentation
SETNS AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDX] 
MOV BL, CL 
TEST AL, -6 
TEST RAX, 2107840224 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
