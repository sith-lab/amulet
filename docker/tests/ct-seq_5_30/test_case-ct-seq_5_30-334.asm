.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -98 # instrumentation
CMOVLE EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RSI] 
LEA EAX, qword ptr [RBX + RDI + 21197] 
ADD DL, DL 
CMOVNO EDI, EAX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
IMUL BL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RAX] 
CLD  
ADD SIL, 102 
IMUL CX, BX 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -106 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RCX] 
INC DX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -13 
MOVSX RSI, SI 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
CMOVNL ECX, EDX 
SUB BX, 35 
CMOVZ RCX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
