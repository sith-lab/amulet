.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 82 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], BX 
NEG AX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -45 # instrumentation
CMOVNO SI, DI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
CMOVNL EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BSWAP RCX 
SUB AL, -64 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RBX 
CMP BX, -47 
CMP CL, -15 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], SIL 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 57 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RAX] 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
XCHG EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 26 
SBB BX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -28 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 50 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
