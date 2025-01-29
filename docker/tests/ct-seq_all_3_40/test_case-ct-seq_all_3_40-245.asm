.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RDX 
INC DI 
XOR DL, BL 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EBX 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
CMOVNO ECX, ESI 
OR EAX, -904076448 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], BL 
CMOVZ CX, CX 
SUB EBX, ECX 
JMP .bb_main.1 
.bb_main.1:
INC EDI 
CWDE  
SETZ DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
XADD DL, CL 
CMOVZ AX, CX 
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
CMOVO BX, SI 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
CMPXCHG RBX, RAX 
CMOVNLE EAX, EBX 
XADD ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
CMOVNZ BX, DX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 124 # instrumentation
SETNB CL 
SBB RAX, 72 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DI 
CDQ  
MOV BL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -121 
SUB EDI, 76 
CMOVNB RBX, RDI 
CMPXCHG BL, DL 
XOR CL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
