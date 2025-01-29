.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
ADC EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -11 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], BX 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB DL, -114 
ADC EAX, 926929324 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
MOVSX EBX, AX 
CMOVNL DI, BX 
CMOVNLE EBX, ESI 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RDX] 
CMP AL, CL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -77 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -32 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
