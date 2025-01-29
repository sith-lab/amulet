.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BL, AL 
AND ESI, ECX 
OR EAX, 68907417 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
CMOVO EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
ADD RAX, -718424936 
AND RSI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RSI] 
TEST CL, BL 
CMOVO ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], -2182 
NOP  
JMP .bb_main.2 
.bb_main.2:
LEA RCX, qword ptr [RDX + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDI] 
XADD SIL, BL 
SBB DIL, 79 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -13344 
ADD AL, 55 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RDX 
SETZ BL 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 68 # instrumentation
ADC AX, -16742 
CMOVNP BX, CX 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], CX 
TEST DX, -5394 
AND RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RCX] 
SETNB CL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RBX] 
XADD DX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -11696 
SETNBE AL 
SBB EAX, 985435458 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
CMOVNB RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDI] 
MOVSX ECX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
