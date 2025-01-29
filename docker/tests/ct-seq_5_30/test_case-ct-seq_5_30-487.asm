.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], DX 
CMOVNB EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], BX 
CMP AX, -28467 
CMP CX, -33 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
ADD EAX, -471054074 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
ADD DIL, -35 # instrumentation
MOV EDX, 1449709770 
CMOVNBE BX, SI 
XCHG DX, BX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RCX] 
INC ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -66 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOV AX, -12284 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RDX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -65 # instrumentation
CMOVNB EDI, ECX 
MOVSX RSI, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RCX] 
CMOVZ RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
