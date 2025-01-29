.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], SIL 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, -52 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDI] 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
SBB AL, -121 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
ADD RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RDI 
JNBE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
CMP EAX, EDX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RBX] 
ADD DIL, -77 # instrumentation
CMOVS DX, BX 
SBB DIL, 112 
XCHG AX, AX 
CMOVNO EBX, ESI 
SBB CL, BL 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB RCX, -28 
ADD AL, -94 
ADD RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], -93 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], SI 
LEA SI, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
CMOVNS CX, DI 
STC  
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
