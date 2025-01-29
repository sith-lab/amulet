.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RAX, RDI 
CMP CX, CX 
MOV RDX, -6271273126527643891 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DI 
CMP RDI, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], SI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 102 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
ADD EAX, -1683848508 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
CMP EDX, EDX 
LAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
