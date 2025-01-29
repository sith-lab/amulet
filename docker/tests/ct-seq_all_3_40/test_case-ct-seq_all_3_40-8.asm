.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
STC  
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RSI] 
DEC BX 
XADD CL, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
SBB EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RBX] 
CMP AL, CL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -94 # instrumentation
SETLE DL 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
MOVZX RBX, DL 
TEST AL, 30 
CMOVNL DI, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RAX 
TEST DI, -14212 
CMOVB SI, DI 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], CX 
SBB EAX, -1623217439 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RCX 
IMUL EBX, EBX, -8 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -111 
CMPXCHG RCX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RAX] 
ADD DL, -67 
MOVSX RDX, CX 
XOR BL, DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -103 
AND RCX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RCX] 
BSWAP ESI 
SETNL DL 
STC  
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], BL 
TEST RAX, 272202143 
XOR DIL, 0 
SETBE BL 
CMOVNO BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
