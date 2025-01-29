.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EBX, 6 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -102 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RSI 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RAX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RCX] 
MOV CL, -87 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 48 
ADC BX, 78 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
