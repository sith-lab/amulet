.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DI 
SETB AL 
CMP AL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND DIL, 23 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], AX 
CMOVNZ EAX, EBX 
LEA RAX, qword ptr [RSI + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -49 
IMUL RSI, RDX, 44 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], 98 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
IMUL RDI, RDI, -39 
CMP RSI, 75 
CMOVNB EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
SETNLE DIL 
INC AL 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DIL 
SBB EDI, ESI 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
SUB SIL, SIL 
MOVZX EDX, CL 
AND RDX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDX] 
SETBE CL 
MOV RAX, 8328229174271708491 
AND RDX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDX] 
SETP CL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 65 
CMOVNB RBX, RDI 
XOR BX, CX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
SBB RAX, 1776719030 
DEC EBX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
MOV RDX, RBX 
SUB EDX, -116 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 32048 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
