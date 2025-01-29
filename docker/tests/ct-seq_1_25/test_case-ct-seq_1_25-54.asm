.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 5 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -114 
ADC EDX, -95 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 9700 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 65 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EBX 
CBW  
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 62 
ADC AX, -18807 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 114 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
IMUL EBX, EBX, -89 
ADD SIL, -58 # instrumentation
CMOVBE EAX, EDI 
CMOVNBE EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RCX] 
ADC EAX, -1514027641 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -121 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -18 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 73 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
MOVSX RBX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
