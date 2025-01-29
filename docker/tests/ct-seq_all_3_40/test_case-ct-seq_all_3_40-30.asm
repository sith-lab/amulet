.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], -88 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 106 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
IMUL ESI 
MOVSX DI, BL 
AND RDX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDX], -104 
ADD DIL, -125 # instrumentation
SETNS CL 
ADC RAX, -102103527 
SETBE SIL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -122 
IMUL RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -104 
NOT EDI 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
SBB ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDX] 
ADD AL, 30 
CMOVZ RDI, RDX 
OR BX, 112 
MUL SI 
AND ESI, 101 
CMP EDI, -69 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], 57 
ADC SI, -23 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], -82 
JMP .bb_main.2 
.bb_main.2:
MOVSX ECX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RCX] 
CMOVP CX, DX 
LEA RDI, qword ptr [RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
MOVZX EBX, AL 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
SBB DX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
