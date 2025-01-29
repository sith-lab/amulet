.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -80 # instrumentation
DEC CL 
CMOVBE SI, AX 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], SI 
JO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
CMOVNS EDX, EAX 
LEA RDX, qword ptr [RBX + RCX + 39089] 
CMP AX, SI 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -58 # instrumentation
XCHG RAX, RAX 
ADC DX, BX 
AND RDX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 69 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
IMUL RSI, RDI, -1 
CMP ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
ADD DIL, 107 # instrumentation
CMOVNL SI, DI 
ADD RBX, RDX 
MOVZX EAX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DX 
MOVZX RCX, SI 
CMP AX, 16934 
XCHG RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
