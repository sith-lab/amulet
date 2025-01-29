.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
INC BL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -73 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RCX 
AND RBX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RBX] 
LEA ESI, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
MOV RDX, -394210449228629961 
AND RAX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RAX] 
STC  
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RSI] 
CMP DIL, BL 
ADD DL, DL 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -109 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
