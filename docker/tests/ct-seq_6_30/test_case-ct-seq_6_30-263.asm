.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 32 
IMUL CL 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
JNO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, -60 # instrumentation
ADC DX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 84 
CMOVO EDI, EBX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -8 # instrumentation
ADC AL, -1 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RAX] 
CMOVB AX, DX 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], 68 
CMOVNZ EDI, EBX 
NEG RSI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RAX] 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
ADD EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -37 # instrumentation
SBB EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 65 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -115 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
