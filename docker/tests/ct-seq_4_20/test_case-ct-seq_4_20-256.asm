.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 61 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DX 
INC AL 
JMP .bb_main.1 
.bb_main.1:
INC RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 72 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 106 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -32 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 26 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], SI 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RAX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SAHF  
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
CMOVNO RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
