.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB BL, -55 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], BX 
AND RDI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDX 
CMOVLE RDX, RSI 
INC RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
MUL BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -84 
AND RAX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RAX] 
ADD BL, BL 
ADD CL, 90 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EAX 
CMOVB DI, DX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -27 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 88 # instrumentation
CMOVO EAX, EDI 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDI] 
ADD DIL, 23 # instrumentation
CMOVL DI, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RSI] 
SBB DIL, -102 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
CMOVNB RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EBX 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -49 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDX] 
IMUL RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
