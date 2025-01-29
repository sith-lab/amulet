.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
LEA ESI, qword ptr [RAX + RDX] 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
INC EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
CMP CL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
CMP RBX, RBX 
CMP ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
CMOVP AX, DI 
SUB AL, 49 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
CMOVNZ RSI, RAX 
IMUL SIL 
CMOVNO EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 22 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ESI 
CMOVNO EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
MOV DX, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -39 
CMOVZ AX, DI 
CMP RDX, -53 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
