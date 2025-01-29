.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ESI 
INC RBX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ECX 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -20 
AND RAX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -118 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -50 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], DI 
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI], -35 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
CMOVLE RBX, RSI 
LEA EDX, qword ptr [RDI] 
MOVSX EDI, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
