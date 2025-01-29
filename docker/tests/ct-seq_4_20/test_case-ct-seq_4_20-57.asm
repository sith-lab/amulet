.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RSI] 
INC RDI 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], ECX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDI 
AND RDI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RSI 
CLD  
CMP EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 27 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
