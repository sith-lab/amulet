.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RBX 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RAX] 
MOVZX EDI, DX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDX] 
ADD SIL, -50 # instrumentation
CMOVNS EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -36 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDX 
SBB RDX, -77 
MOVSX RCX, SIL 
JNO .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, 64 # instrumentation
CMOVO EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 111 
STC  
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
ADD RDI, -72 
MUL DX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -113 
MOVZX DX, BL 
JMP .bb_main.4 
.bb_main.4:
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
CMP EAX, 214503631 
MOVZX RDX, CX 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
CWD  
MOVSX EDI, BL 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOV EBX, -2025209224 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
