.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLC  
AND RDX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
OR AL, -2 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RSI 
IMUL EDI 
XOR EAX, 1653000113 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RCX 
ADD SIL, 14 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOV CX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -17 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
XADD DX, CX 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
SETNO SIL 
ADD CL, 13 
IMUL BX, AX, -73 
CMOVB DI, DX 
CMP EAX, -318086925 
SUB BL, -82 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], SI 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP AX, DX 
IMUL RDI, RBX, -1 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
IMUL EAX, EAX, -90 
SETNB BL 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
TEST EAX, 1502159643 
MOV AX, AX 
XOR EAX, -1757038594 
XOR AX, 30355 
JMP .bb_main.3 
.bb_main.3:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
MOV CL, DL 
CMP AL, 72 
IMUL DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDI] 
CMOVNBE BX, SI 
SBB DIL, -92 
SUB EBX, ESI 
OR SIL, 93 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
