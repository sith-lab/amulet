.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BX, BX, -49 
ADD SIL, -82 # instrumentation
CMOVZ RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 68 
CMOVNLE RAX, RBX 
ADD RCX, -108 
MOVSX ESI, DI 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RBX] 
CMP DIL, 45 
AND RDI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDI] 
LOOP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 70 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -27 
ADD EAX, -1002334877 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 76 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
CMOVP ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RCX] 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -114 # instrumentation
ADC AL, 40 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
SAHF  
CMOVB EBX, EAX 
SBB DIL, -12 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RCX] 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 114 # instrumentation
SBB DIL, -101 
CMOVB EBX, EDX 
MOVZX SI, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
