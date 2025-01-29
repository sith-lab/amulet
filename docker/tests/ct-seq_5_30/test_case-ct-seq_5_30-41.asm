.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -96 # instrumentation
CMOVBE RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], AX 
SBB DIL, AL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 115 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -15 # instrumentation
ADC RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 37 
ADC EAX, -849545772 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
ADC RAX, -1702428869 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -43 
AND RDI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDI], -66 
ADD DL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DX 
SBB DL, 55 
CMP RAX, -2039554046 
ADD AX, 7411 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 23 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RCX] 
XCHG DL, DIL 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
CMOVL CX, DI 
XCHG CX, AX 
MOV EBX, 1185620474 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], CX 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RAX] 
MOVSX SI, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
IMUL DI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
