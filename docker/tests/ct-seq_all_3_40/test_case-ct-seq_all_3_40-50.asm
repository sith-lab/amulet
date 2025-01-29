.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], SI 
CMOVBE RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], AL 
INC BX 
SETB DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
XOR DL, BL 
SETNO CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
JMP .bb_main.1 
.bb_main.1:
SUB AX, -8829 
IMUL EBX, EAX, -96 
AND RSI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDX] 
CMPXCHG DL, CL 
CMOVNB EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI], 11 
ADD SIL, 40 # instrumentation
SETS CL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RSI 
MOVSX RDI, DI 
XOR CL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 9 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
SUB AX, -24737 
XCHG DX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RBX] 
ADD CX, BX 
ADD EAX, 678763782 
XCHG RSI, RAX 
XOR RAX, -21 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RCX] 
CMOVO ECX, ECX 
XOR RAX, -9889391 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
