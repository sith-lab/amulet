.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR BX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDX] 
MOV RBX, 6463184592874098836 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
SETNO CL 
CMOVNB BX, AX 
AND RDX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDX], 123 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -65 
CMOVNBE ECX, EDI 
ADC RAX, -2029088515 
ADC RAX, RCX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND EDI, 70 
SETNB SIL 
OR DI, AX 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
IMUL RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EDI 
AND RCX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 82 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 102 
CMOVP CX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
CMOVBE EAX, EDI 
SBB DX, CX 
JMP .bb_main.2 
.bb_main.2:
IMUL DI 
MOVSX ECX, DL 
XCHG ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
ADD CL, CL 
SAHF  
ADC RSI, -92 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RCX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -40 
TEST ECX, -1972763647 
SUB SIL, 124 
XOR AL, 40 
OR EAX, 1869700167 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
