.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA RAX, qword ptr [RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -82 
CMP RBX, -42 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EDX 
AND RDI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDI] 
IMUL ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -43 
MOVZX ECX, BL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -65 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 3 
CMOVLE ECX, ESI 
SBB RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -12726 
CMOVNO RSI, RDX 
MOV EBX, 664251080 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
DEC RSI 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -48 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
CMP AX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
