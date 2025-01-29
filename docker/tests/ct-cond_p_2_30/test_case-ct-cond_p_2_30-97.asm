.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 61 # instrumentation
ADC EBX, -70 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DX 
ADD SIL, -58 
DEC SI 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -121 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
CMOVNL SI, DX 
DEC RDI 
CMOVS RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
IMUL RDX, RCX, 22 
ADD SIL, 80 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDX 
CMOVLE RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI] 
ADD SI, 32 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 86 
ADD RAX, 1413996339 
AND RAX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RAX] 
CMOVL DX, CX 
SUB RAX, -949239894 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 522861476 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RCX] 
SBB RAX, 1031816111 
SBB AL, BL 
CMP DIL, 28 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
