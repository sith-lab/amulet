.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 125 
CMOVO SI, CX 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
CMOVB AX, CX 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RDX] 
CMOVS SI, DX 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
CMOVNZ RCX, RCX 
CMOVZ RDI, RDX 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -55 # instrumentation
CMOVNBE BX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RSI] 
SBB SIL, -56 
CMOVS RAX, RDI 
CMOVNLE DI, CX 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD ECX, EDX 
CMOVBE SI, BX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -31 
ADC EAX, 68 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 3 
CMOVNS RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RCX] 
CMOVNB BX, DX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDI] 
ADD SIL, -119 # instrumentation
CMOVL RBX, RBX 
CMOVNB DI, DX 
NEG EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
