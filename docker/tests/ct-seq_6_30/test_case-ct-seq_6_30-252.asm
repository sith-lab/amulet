.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -14 # instrumentation
CMOVNLE RBX, RBX 
CMP AX, 9944 
MOV DIL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -80 
MUL BX 
CMP AL, 37 
SBB AL, 47 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], CX 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
SUB ECX, EDX 
MOVSX RCX, DI 
ADD DL, 22 
CBW  
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
ADD DIL, -86 # instrumentation
BSWAP RBX 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
BSWAP EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
JMP .bb_main.4 
.bb_main.4:
ADD AX, -42 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -93 
MOVZX EDI, BL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DIL 
OR CX, 0b1000000000000000 # instrumentation
BSF DI, CX 
ADD SIL, -65 # instrumentation
CMOVNBE RDX, RDX 
CMOVLE RBX, RDX 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 31 
IMUL EDI, EBX 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
