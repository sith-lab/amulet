.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX AX, AL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DI 
CDQ  
ADD RAX, 595099975 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
CMOVNBE EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDI] 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD AL, CL 
SUB AX, -25184 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -54 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 80 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
CMOVNLE EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 23186 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
