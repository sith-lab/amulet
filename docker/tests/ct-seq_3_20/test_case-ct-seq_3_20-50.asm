.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -13 # instrumentation
CMOVB ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -105 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDI 
DEC SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -106 
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
INC RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RCX] 
CMOVL EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -62 
MOVZX SI, CL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DX 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
CMOVNO DX, CX 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
