.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RSI, RDI 
SUB EDI, EAX 
CMOVS RDI, RDI 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -10 
SUB SIL, 84 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -82 
SBB DI, DX 
CMOVNB CX, DI 
JNB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
IMUL AX, DI, 66 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 25 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
CMOVNBE EAX, EAX 
CMP EAX, -972981879 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
SBB EDI, 73 
CMOVNS ESI, EAX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
MUL BX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], SIL 
CMOVP CX, CX 
ADD ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
IMUL RBX, RDX 
ADD DIL, 116 # instrumentation
CMOVL ECX, ESI 
SBB EAX, -1265667438 
MOV EBX, EAX 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
