.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 29 # instrumentation
CMOVLE EDI, ECX 
MOV BX, -21844 
CMOVNL DI, DI 
OR SI, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDI] 
AND EAX, EDI 
ADC BL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
IMUL BX, DX 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
CMOVNP RDX, RDI 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -102 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RAX] 
IMUL RDX, RDI, -25 
INC EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
CMOVNZ EAX, ECX 
SETL DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
OR DL, 1 # instrumentation
AND CL, AL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDX 
CMP RDX, RAX 
CMOVZ SI, DI 
SUB DIL, SIL 
NEG DIL 
ADD SI, DX 
ADD DIL, -66 
SUB CX, -61 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], RDX 
DEC AX 
MOV DX, -19707 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
