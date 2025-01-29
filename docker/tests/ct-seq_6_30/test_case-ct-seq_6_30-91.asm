.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -64 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
JNS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RBX] 
NEG DL 
SBB EAX, 33 
MOV SI, -8293 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
SBB BL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 83 
JNS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
CMP ECX, 14 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -17 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 115 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -21 
SBB AX, 11418 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
NEG SI 
CMOVZ DI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDI] 
IMUL AX, CX 
DEC EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
