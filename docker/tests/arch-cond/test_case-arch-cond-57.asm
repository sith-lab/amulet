.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, 32046 
SETNLE BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RBX] 
SBB SI, CX 
MOVSX EAX, DL 
ADD AL, -27 
SETNBE BL 
ADD RSI, RAX 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDI] 
SUB EDI, EAX 
ADC SIL, CL 
ADD RAX, -524510370 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
JBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
CMPXCHG EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], 22 
ADC EDI, 80 
SETS BL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], CX 
XCHG RBX, RAX 
CMP EAX, 1391412543 
CMP CX, -101 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 121 # instrumentation
CMOVP RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], DI 
ADD DIL, 78 # instrumentation
LAHF  
SUB RAX, -146034438 
SBB DIL, CL 
TEST SI, BX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
CMOVNL RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RCX] 
MUL EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
