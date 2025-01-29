.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -8 # instrumentation
CMOVL SI, DI 
AND EAX, 1143029487 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RBX] 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
INC CL 
XADD EDI, EBX 
OR RAX, 844552622 
CMC  
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], 66 
INC RSI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -1 # instrumentation
CMOVNO EBX, EAX 
AND AL, -36 
CMOVNP ESI, EBX 
SBB EAX, 2 
SETS BL 
CMP DX, DX 
AND RAX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RAX], 16 
ADC DL, SIL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD DL, AL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
CMP SI, BX 
ADD EAX, -43 
SETNLE DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 51 
OR AL, -78 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI], 37 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 97 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RBX] 
CMP RBX, -3 
CMOVNO EDI, ECX 
STD  
NEG RBX 
TEST CL, BL 
SBB AX, 23334 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
