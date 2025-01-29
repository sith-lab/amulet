.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DX, 17 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 61 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], DI 
CMP AL, -48 
JMP .bb_main.1 
.bb_main.1:
SUB CX, CX 
MOV AL, 72 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 126 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DX 
IMUL RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 65 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -31 # instrumentation
SBB RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -8 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
CMP EAX, -2015864825 
MOVSX EDX, DI 
JMP .bb_main.3 
.bb_main.3:
MOV RAX, RSI 
CMP ESI, 67 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
NEG SIL 
MOVZX BX, AL 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -110 
CMOVNL RCX, RSI 
SUB EBX, -32 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -37 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
