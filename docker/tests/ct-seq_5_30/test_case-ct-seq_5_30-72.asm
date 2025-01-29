.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EDI, DI 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EDI 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
MOV RBX, RDX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RBX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
ADD AL, 37 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RSI 
BSWAP RSI 
AND RAX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RAX] 
SBB DIL, DL 
MOVZX EBX, CX 
MOVSX ESI, DL 
SUB RBX, RAX 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -44 # instrumentation
CMOVS ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -53 
DEC DI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -122 
CMOVNL BX, BX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
