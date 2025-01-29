.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
NEG EDI 
DEC DIL 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DI 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -28 
CMP AX, -60 
ADC DX, BX 
SBB DL, BL 
MUL CL 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RSI] 
CMP EAX, 627446740 
CMOVNS CX, AX 
MOV DIL, 15 
JL .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
IMUL AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
MOV RAX, -294215730652148965 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RSI] 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -50 # instrumentation
SBB RAX, -268200652 
CMOVLE DI, BX 
CMOVS DI, DI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDI] 
CMOVNB AX, CX 
CMOVNBE EDX, EBX 
CMOVNL DX, DX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDI 
JMP .bb_main.5 
.bb_main.5:
CMP EDI, EDI 
CMOVNL RDX, RDX 
ADD RSI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
