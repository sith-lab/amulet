.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
SBB EDI, -110 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 89 
DEC RDX 
SUB RAX, -990684805 
CMOVNLE DX, SI 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
CMOVNB RDI, RBX 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EBX 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -84 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
MOV RSI, RDX 
ADD ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
ADD ECX, EDI 
CMOVBE EDX, EDI 
CMOVNLE RAX, RBX 
CMOVO AX, DI 
AND RSI, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RSI] 
DEC DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
