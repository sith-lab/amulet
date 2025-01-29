.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RCX] 
IMUL RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
ADD ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 118 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
MOV DL, 127 
CLC  
AND RDI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], AX 
ADC RAX, RCX 
BSWAP RBX 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -42 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RBX 
CMOVL RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
