.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EDX 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
ADC RAX, -252092396 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], SI 
IMUL CX, DI, -26 
SBB ECX, -42 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RDX] 
SUB AX, 9336 
SUB BX, DI 
SUB AL, -106 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
MUL DL 
XCHG CX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDI 
LOOP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -25 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
MOV EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RBX] 
CMOVNP EBX, EDX 
BSWAP RDX 
CMP AX, 20369 
MOVSX RDI, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
