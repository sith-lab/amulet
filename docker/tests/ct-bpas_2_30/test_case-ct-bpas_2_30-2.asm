.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 57 # instrumentation
CMOVZ EAX, ESI 
CMOVP ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
SBB AL, -66 
ADC BL, DIL 
SBB AX, -12107 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
CMOVNS BX, BX 
CMOVNB DX, SI 
ADD AX, -11638 
CMOVNLE RDI, RDI 
CMOVNB ESI, EDI 
IMUL BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -20 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RAX] 
SBB AL, -73 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EAX 
ADC RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
DEC DL 
CMP RAX, -2016435591 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
