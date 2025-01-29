.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], CX 
MOV RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
CLD  
AND RSI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RSI] 
SBB BL, 84 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -9 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -123 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 40 # instrumentation
SBB CX, 107 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
XCHG BL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EDI 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 120 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
