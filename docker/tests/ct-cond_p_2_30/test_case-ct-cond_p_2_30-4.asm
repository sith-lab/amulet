.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 91 
SUB DIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RBX] 
CMP RBX, RDI 
CMOVNP BX, BX 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
ADD SIL, -7 # instrumentation
CMOVZ RAX, RDX 
CMOVBE RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
CWDE  
SBB BL, -60 
CMOVP RBX, RCX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 54 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
ADC AL, -122 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDX] 
CMOVB RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
ADD BL, -120 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
ADD EAX, 82 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
