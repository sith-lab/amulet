.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RAX 
ADC AL, -99 
OR RDI, 119 
INC EDX 
SBB RBX, -89 
SBB EAX, -982705655 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], AX 
CMOVNBE SI, DI 
XOR AX, -19670 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
CMOVBE RSI, RCX 
XOR ESI, ESI 
MUL RDX 
ADD SIL, 39 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CLD  # instrumentation
ADD DIL, -122 # instrumentation
SETNO AL 
XOR AL, 13 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], ESI 
BSWAP EDX 
JP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, -103 # instrumentation
MOVSX RSI, BL 
CMOVLE RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
ADD SIL, -123 # instrumentation
CMOVNS RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
SETNBE CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 0 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -14 # instrumentation
CMOVNB CX, AX 
IMUL EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 17 
SUB AL, -53 
CMOVNBE CX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
