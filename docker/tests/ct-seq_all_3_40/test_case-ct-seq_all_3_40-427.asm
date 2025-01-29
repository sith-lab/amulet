.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -116 # instrumentation
CMOVNP RDI, RAX 
SUB RBX, -127 
TEST AX, -670 
SETNLE DIL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], 93 
ADD EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
TEST CL, AL 
CMOVP SI, SI 
TEST RCX, 284570667 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], SIL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
LEA RDI, qword ptr [RSI] 
CMP AX, -17945 
SUB AL, CL 
NEG DI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -78 
SETZ DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DL 
SUB AX, 27127 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RAX] 
MOVZX BX, DL 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
ADC DX, SI 
TEST EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -111 
SETLE BL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
CMP SIL, -83 
BSWAP EDI 
SETNS SIL 
ADC AX, -5124 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
SUB SIL, 33 
CMOVNBE RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
