.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -81 # instrumentation
CMOVB CX, AX 
AND EBX, 1 
IMUL AX 
ADD SIL, -40 # instrumentation
MOVSX ECX, AX 
MOVZX RAX, CX 
NOP  
CMOVNLE BX, BX 
SETO AL 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX], 46 
ADD SIL, -62 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 57 # instrumentation
ADC DX, 106 
SUB DI, -34 
SBB DL, -24 
SETL CL 
ADD EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RSI] 
IMUL ECX 
AND RDX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDX] 
CDQ  
IMUL BX, BX, 18 
CLD  
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
ADD SIL, 85 # instrumentation
SBB CX, -80 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST DIL, 25 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
DEC DL 
CMOVP AX, DX 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 7741 
SETP DIL 
SUB CX, -87 
SETB CL 
AND DIL, -123 
MOV CL, DL 
AND EAX, -118 
SETNBE BL 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 16926 
ADC EBX, 93 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
CWD  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
