.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
CMOVLE DX, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -101 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 85 # instrumentation
ADC RAX, 109 
AND RDX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RDI 
CMOVNO EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DI 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDX] 
XCHG DX, AX 
CMOVNS EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RAX] 
SUB RCX, 76 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RCX] 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVSX EAX, CL 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], SIL 
CMOVNL EDI, EDI 
MUL DIL 
ADD DIL, 6 # instrumentation
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDX], -76 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -569852046 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
CMOVNBE ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
