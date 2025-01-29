.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
AND RBX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RBX] 
SUB AL, DL 
SETLE AL 
CMOVB RCX, RDI 
ADC RDI, 49 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], ECX 
SETNLE CL 
AND CL, AL 
SBB RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 116 
AND RBX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RBX] 
BSWAP ESI 
AND RSI, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RSI] 
OR SI, CX 
SBB EAX, EBX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DIL, 93 # instrumentation
LEA AX, qword ptr [RDX + RDI] 
SETNO DL 
SBB ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RAX] 
CMPXCHG RCX, RBX 
SETP BL 
AND DI, -79 
MOVSX CX, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
MOVSX RBX, CL 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB EAX, -1157968590 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RSI] 
AND ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
SETO BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -106 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -78 
AND RAX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RAX] 
CBW  
MOVZX DX, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
