.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
SUB BX, DI 
SUB DIL, 111 
AND DIL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], -6 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], DL 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -55 # instrumentation
SETS BL 
CMOVNS SI, SI 
SETNO BL 
DEC EDI 
CDQ  
SETNZ BL 
TEST RAX, -1524519712 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDX 
LEA ECX, qword ptr [RDX + RCX] 
ADD CL, -40 
SETS SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RBX 
ADC AX, -3790 
CMP AX, DX 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], CX 
MUL ESI 
ADD DIL, -93 # instrumentation
CMOVZ EBX, EBX 
ADD RCX, RBX 
CMC  
TEST DIL, 80 
SETP AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], AL 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
ADD ECX, -73 
CMOVO ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ECX 
CMOVO DI, SI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
