.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -30 # instrumentation
SBB EAX, -1759778742 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RCX] 
MOVZX EBX, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDX] 
IMUL RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
LOOPE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD ECX, -76 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EDX 
CMP CX, 25 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RBX 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 98 
AND RDX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
IMUL RBX, RCX 
DEC RSI 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -102 
JNB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
XCHG EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -12 
ADC RAX, -1614400253 
SBB AX, 98 
MOV ESI, EBX 
MUL BL 
ADD SIL, -33 # instrumentation
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 21 # instrumentation
SBB AL, 56 
CMOVLE ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RCX] 
BSWAP EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
