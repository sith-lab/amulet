.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 4 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 429827532 
LEA EAX, qword ptr [RDX + RSI] 
JMP .bb_main.1 
.bb_main.1:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DI 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ECX 
AND RBX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RBX] 
MOV DIL, BL 
CMP AL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDI] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CBW  
SUB ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -73 # instrumentation
ADC RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
