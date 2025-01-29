.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -60 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -102 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDX] 
SUB CX, -63 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 65 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RAX] 
ADD RAX, -12 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 35 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
BSWAP RDI 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -95 
CMOVBE ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
