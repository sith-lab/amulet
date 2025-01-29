.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RBX] 
OR AX, -32371 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RCX] 
CMOVNLE RCX, RCX 
XADD ECX, EAX 
MUL CL 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD AX, 29425 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EDI 
XCHG RBX, RBX 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
ADD EAX, -1513543504 
LAHF  
SUB AL, -50 
CMOVP RDX, RCX 
XCHG RSI, RAX 
MOVZX BX, DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RSI] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
INC SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
SETBE BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
ADD CX, DX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], -746018346 
CMP SIL, 118 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 1 # instrumentation
SBB CL, -95 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RAX] 
AND RDX, -15 
CMOVNZ RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -35 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], -55 
OR AX, 108 
NOT DL 
ADD RSI, -122 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
