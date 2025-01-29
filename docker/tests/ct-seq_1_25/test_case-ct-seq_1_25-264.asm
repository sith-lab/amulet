.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -84 # instrumentation
SBB DL, BL 
ADC AL, AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
ADD EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -63 
AND RDI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDI], -25 
MOVSX DI, CL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DX 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDX] 
MOVZX RBX, DIL 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
CMP BL, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
CMOVO ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EAX 
CMP DL, DL 
INC DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
OR DX, 0b1000000000000000 # instrumentation
BSF SI, DX 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
