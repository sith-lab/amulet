.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
DEC AL 
CMOVNZ EAX, EDX 
CMOVNZ RBX, RSI 
NEG DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RCX] 
CMOVNBE DX, AX 
MOV CX, -8969 
JMP .bb_main.1 
.bb_main.1:
MOVSX SI, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RSI] 
MOV CL, DL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RCX] 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -30 
MOVSX ECX, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
CMOVNZ CX, SI 
CMOVNO RAX, RSI 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -8 # instrumentation
CMOVNZ RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
MOV ESI, ECX 
IMUL DI 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
MOV AL, -85 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDX] 
CMOVP ESI, ECX 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XCHG RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
