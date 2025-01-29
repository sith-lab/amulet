.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 18 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 61 
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RCX 
LEA RCX, qword ptr [RDI + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -67 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 126 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], DX 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
