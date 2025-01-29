.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 60 
MOV DIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -106 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
INC CL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RBX] 
SUB SI, DX 
XCHG CX, DX 
CMP AL, 81 
CMOVNO RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], BX 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, -126 # instrumentation
XCHG RAX, RAX 
CMOVZ SI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
ADD SIL, 31 # instrumentation
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RSI 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
CMP EAX, -1715903517 
SUB DI, 54 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
MOVSX RBX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
MOV AX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -115 
MOVZX EAX, CX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -113 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
