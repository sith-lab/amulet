.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EBX, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], ECX 
ADD DL, 58 
IMUL SI 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DI 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -44 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 98 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
CMOVBE RSI, RCX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], SI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -43 
MOVSX CX, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -47 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
CMP EAX, EBX 
ADC AL, -111 
JL .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDI] 
XCHG EAX, ECX 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RCX] 
CMP ESI, EAX 
CMOVNS DI, DX 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
