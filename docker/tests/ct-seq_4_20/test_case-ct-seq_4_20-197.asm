.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RDI, 83 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -809349663 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EBX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -106 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 126 
MOVSX AX, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -124 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 23 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
