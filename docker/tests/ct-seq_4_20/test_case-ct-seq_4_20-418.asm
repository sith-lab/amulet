.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -56 # instrumentation
SBB EAX, -606165002 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 63 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
CWDE  
MOV AX, -23932 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 122 # instrumentation
SBB CX, 0 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -113 
ADC DX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
ADD DL, DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 63 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -109 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
CMOVP SI, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
