.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -86 # instrumentation
CMOVNS ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX] 
MUL CL 
ADC AL, DIL 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
CMOVNL ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -63 
ADD DL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RDI 
CMP BL, AL 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -126 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDI] 
MOVSX EDI, AX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RAX] 
SUB DIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
SBB DIL, AL 
SBB AL, -61 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
MUL AL 
CMOVO ESI, ESI 
ADD CX, BX 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
CMP EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
ADD AL, 86 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
