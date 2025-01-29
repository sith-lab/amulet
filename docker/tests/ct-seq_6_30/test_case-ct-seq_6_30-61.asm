.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -111 # instrumentation
CMOVP AX, AX 
ADD EAX, 583795333 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RBX 
MUL RCX 
DEC BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -70 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DX 
CLC  
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
ADC DI, -64 
CMOVB ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
ADC EDI, -106 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ECX 
MUL AL 
CMOVNO RDX, RDI 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -32 
CMOVZ ESI, EAX 
SUB RAX, -14 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RCX] 
XCHG AL, DL 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDX] 
XCHG RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
