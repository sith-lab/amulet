.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RAX] 
CMP EAX, 1537127404 
JMP .bb_main.2 
.bb_main.2:
DEC DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
MOV BL, CL 
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -64 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 47 
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
SBB EAX, 514832286 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
