.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], CX 
MOVSX EDI, AL 
CMOVNS EAX, ECX 
NEG AX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -125 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 77 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
XCHG BX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 80 
XCHG CL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
OR DL, 1 # instrumentation
STC  
CMOVNP EBX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
