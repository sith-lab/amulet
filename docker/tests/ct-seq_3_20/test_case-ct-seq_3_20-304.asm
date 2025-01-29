.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 85 # instrumentation
CMOVNB EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], SIL 
CMOVO BX, CX 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 89 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -59 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EDI 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -67 # instrumentation
CMOVNB RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RBX 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
IMUL AL 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
SAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
