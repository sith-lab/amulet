.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC BX 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
ADD CL, DL 
SBB RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RAX] 
CWD  
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
CMOVNO BX, DI 
JMP .bb_main.1 
.bb_main.1:
OR SIL, -81 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
SUB RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RAX] 
TEST AX, 1339 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RCX] 
CMOVNZ DX, DX 
AND AL, 51 
CMP BL, AL 
OR RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
ADD DIL, 50 # instrumentation
SETLE CL 
IMUL AX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], AL 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -5 # instrumentation
SBB DIL, 95 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], EAX 
XOR AL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DI 
SBB DL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RSI 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDX 
CMOVNL EDI, ECX 
CMOVB RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX], 26 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], DL 
CMOVNZ EDX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
