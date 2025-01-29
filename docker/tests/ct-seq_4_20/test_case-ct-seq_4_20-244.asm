.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RAX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
NEG BL 
SUB AX, -1005 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], DI 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 48 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RSI] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 4 
CMP AX, -17659 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
ADD AL, -94 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 88 
IMUL BX, DI, -41 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
