.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -58 
SBB EBX, EBX 
CMOVBE DI, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
CMOVZ CX, DX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -76 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RDX 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], SI 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -109 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -126 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], AX 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -21 
CMOVBE RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
