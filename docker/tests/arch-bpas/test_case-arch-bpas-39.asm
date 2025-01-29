.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOP  
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
IMUL EBX, EDX, 122 
AND CL, -35 
SETNLE CL 
SETS CL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
CMP SIL, 17 
CMP BL, BL 
JMP .bb_main.1 
.bb_main.1:
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RDX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDX] 
IMUL DL 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], DIL 
ADC EAX, 66 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 10 # instrumentation
CMOVNB DX, DI 
IMUL DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], DIL 
SETB AL 
SETLE CL 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RDI 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -40 # instrumentation
CMOVLE RCX, RAX 
XOR EAX, 120841012 
TEST AX, -19298 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -99 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], 21 
XCHG EDI, EAX 
CMP RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
SBB AL, SIL 
XOR DL, 58 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
