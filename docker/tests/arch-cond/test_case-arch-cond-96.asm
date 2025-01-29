.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -41 # instrumentation
SETZ CL 
MOVZX EDI, SIL 
AND RDI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
NOT RBX 
LEA AX, qword ptr [RCX + RDX] 
SUB RAX, -427660553 
CMP AX, DX 
ADC RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 4 # instrumentation
CMOVNLE AX, CX 
AND DIL, CL 
ADD AX, 20638 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -112 
SETS CL 
MOVSX EAX, DI 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], ECX 
SBB SIL, 119 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -66 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 49 
AND RDI, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RDI] 
CMOVNB SI, DI 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -91 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 62 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
CMOVNLE BX, SI 
ADD RCX, 27 
XOR AX, -30335 
IMUL EDI 
SBB RAX, -1638143573 
AND EAX, 367310330 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
