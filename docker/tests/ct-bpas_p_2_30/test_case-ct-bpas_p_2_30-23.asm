.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DX 
MOVZX RBX, SI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], SI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
IMUL EDX, EBX, -24 
IMUL SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -77 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -98 
MOV DL, -66 
CWDE  
CMOVNS AX, DI 
DEC AL 
OR DL, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RAX] 
SUB EAX, 447595699 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 10 
MOVZX BX, AL 
IMUL CL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 46 
CMOVNB DI, AX 
CWD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
