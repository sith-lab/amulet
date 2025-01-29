.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX], -56 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 72 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RSI], -86 
CMP BL, -103 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
MOVSX ESI, AX 
CMP BL, BL 
CMOVNZ RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DX 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
