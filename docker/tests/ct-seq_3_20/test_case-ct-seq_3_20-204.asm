.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
SUB CL, -32 
INC RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 78 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -77 
AND RCX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RCX] 
CMOVBE RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], SI 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB AX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -116 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
CMOVS BX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -89 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
