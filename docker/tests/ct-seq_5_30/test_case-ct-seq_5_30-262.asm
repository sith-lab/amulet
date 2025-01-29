.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -6 # instrumentation
CMOVNBE ECX, ECX 
OR DX, 0b1000000000000000 # instrumentation
BSR DI, DX 
ADD DIL, 85 # instrumentation
SBB AX, -25303 
MOV AX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -17 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 106 
ADC EDI, EDX 
JMP .bb_main.1 
.bb_main.1:
CMP AL, -114 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
IMUL BX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDI] 
MUL EAX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DIL 
SBB ESI, EDI 
JMP .bb_main.3 
.bb_main.3:
INC CL 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
ADD DIL, -48 # instrumentation
LEA EBX, qword ptr [RDX + RDI + 27981] 
XCHG DX, AX 
CMOVS CX, CX 
SBB RCX, RCX 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CDQ  
AND RDX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDX] 
ADD EAX, 792323618 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
