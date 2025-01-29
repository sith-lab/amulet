.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
NEG DIL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
SETBE AL 
AND RCX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RCX] 
SETP CL 
AND RAX, RDI 
AND DX, DX 
LEA ECX, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RCX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB CL, 109 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RBX] 
CMOVP EAX, EDI 
SETS BL 
SBB AL, 80 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
XOR EAX, EAX 
TEST CL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
NOP  
SBB CL, CL 
MOVZX BX, DL 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 1 # instrumentation
CMOVNO RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
SETNB DIL 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
SETNS AL 
ADC RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], DX 
MOVZX RSI, SI 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -62 
SETNO DL 
OR AX, 15295 
XADD AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
