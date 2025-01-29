.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RAX] 
CMOVNZ EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RAX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RDX] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 107 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 108 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
CMOVNB BX, SI 
MOV RAX, -9157359694470113880 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -97 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDI 
ADC AX, -43 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 99 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
