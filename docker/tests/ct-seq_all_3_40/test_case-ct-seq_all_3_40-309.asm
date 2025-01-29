.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 51 
CMOVNO BX, CX 
XADD BL, DL 
ADC EDX, EDX 
MOV BX, 18713 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 40 
MOVSX AX, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RAX 
OR BL, BL 
CMP RAX, -40 
MOV CX, 9079 
ADC AX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -70 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ESI 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDI] 
LEA BX, qword ptr [RBX + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -62 
MOVSX DX, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RSI] 
TEST AX, -26114 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
MOV EAX, EDX 
SUB BL, AL 
IMUL SIL 
ADD SIL, 89 # instrumentation
CMOVBE BX, DI 
IMUL DL 
ADD SIL, -32 # instrumentation
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RAX] 
MUL SIL 
DEC RCX 
ADD RAX, -1921835610 
ADD RDI, 31 
XOR SIL, CL 
XOR BL, 114 
AND RBX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RBX] 
CMOVO ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
