.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -94 
ADD AX, -10376 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
ADD CL, BL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
ADD DIL, 59 # instrumentation
CMOVNO BX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
ADC AL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], SI 
SBB EDI, -52 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
SAHF  
ADC RAX, 793671061 
XCHG AL, BL 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
MOVSX ECX, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -18 
SBB EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RAX] 
INC DX 
CMP RAX, -1997344849 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
