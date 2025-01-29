.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 12 # instrumentation
MOVZX RDX, DIL 
CMOVZ RBX, RDI 
MOV DL, -101 
CMOVNB RDX, RSI 
SUB RAX, -1812790903 
SBB RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], DX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
ADD AX, -4750 
ADD RBX, RSI 
CMP DL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 17 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL DIL 
MOVZX CX, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 32 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
AND RDX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDX] 
INC DL 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RCX] 
MOV EDX, 1708856687 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDX] 
DEC DX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
MUL AL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
CMP EAX, -1706031154 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
