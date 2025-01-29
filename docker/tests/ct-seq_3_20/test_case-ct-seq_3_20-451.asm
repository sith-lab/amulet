.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDX 
MUL RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -50 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
ADC BX, DX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RAX] 
STC  
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 69 
AND RAX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RCX] 
CMOVB RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
