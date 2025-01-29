.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], -59 
MUL DL 
SUB CL, DL 
INC AL 
SUB CX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RSI 
CMP DI, DX 
NOT RCX 
AND AL, 6 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], BX 
STD  
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
CMOVBE RSI, RDI 
LAHF  
TEST ECX, -1365515607 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], -17 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DIL 
AND AX, 4556 
ADC RBX, -118 
ADD RAX, RDX 
AND AL, -32 
XADD CL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -42 
SBB CX, -1 
SETS AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
ADC AX, -892 
SETBE DL 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RAX 
OR ESI, EAX 
MOV SIL, -1 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
XOR ESI, 84 
CMPXCHG AL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
IMUL RCX 
ADD SIL, -83 # instrumentation
SETNLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
