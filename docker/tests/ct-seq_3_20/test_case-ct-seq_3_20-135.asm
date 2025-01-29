.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -34 
BSWAP EDX 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -79 
SUB RDI, -74 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
INC ESI 
CMP RDX, 78 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
CMP AL, AL 
CMP CL, BL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDX 
DEC EAX 
ADD AX, -27 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -11 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
