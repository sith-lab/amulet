.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XCHG DI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RCX] 
XCHG RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI], -108 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], ECX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EDI 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -63 
SAHF  
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -104 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
