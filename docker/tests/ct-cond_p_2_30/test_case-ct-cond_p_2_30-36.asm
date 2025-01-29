.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 93 # instrumentation
CMOVB RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI], 44 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -5 
ADD RDI, RCX 
CMOVP EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RBX] 
ADD AL, BL 
AND RBX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RBX] 
SUB SIL, -45 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RSI] 
CMP DL, 108 
ADC EAX, 461806614 
ADC DX, 75 
ADD ESI, EBX 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
ADD CX, BX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 65 # instrumentation
CMOVNBE AX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -58 
CMOVNP DI, BX 
CMOVP CX, DI 
MOVSX ESI, AL 
AND RAX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RAX] 
CMOVNS ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
CMOVNZ RCX, RSI 
IMUL RCX, RAX 
CMOVNO EDX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
