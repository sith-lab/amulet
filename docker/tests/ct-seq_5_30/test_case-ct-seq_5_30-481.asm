.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EAX 
CMOVNBE RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
CMP RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
IMUL BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -92 
MOVZX ESI, SI 
MOVSX EDI, DL 
CMOVNLE BX, CX 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RBX] 
INC BL 
CMP EAX, -1992124228 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 115 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DI 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], CX 
CMOVNB SI, BX 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
SBB EAX, -92 
ADC DX, 6 
CMOVZ EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RCX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
