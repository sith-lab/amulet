.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -52 
CMOVL SI, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -110 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 63 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
MOV BX, -7301 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
