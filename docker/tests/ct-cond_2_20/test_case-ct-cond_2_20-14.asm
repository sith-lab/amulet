.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
IMUL DX, DI 
SUB AL, AL 
AND RAX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -22 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -72 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -42 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
