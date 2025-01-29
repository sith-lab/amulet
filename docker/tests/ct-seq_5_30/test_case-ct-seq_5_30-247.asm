.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, 1692188164 
ADD RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RBX] 
INC RSI 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
ADD CL, DL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 11 
CMOVS CX, SI 
AND RSI, 0b1111111111111 # instrumentation
DEC AX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 3 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -83 
CMOVZ DI, SI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDX] 
ADD DIL, -34 # instrumentation
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDI 
BSWAP RDX 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -80 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDI] 
MOVZX EAX, BL 
OR DL, 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RSI] 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
