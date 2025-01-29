.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDI] 
IMUL DX, SI 
SBB DX, -34 
CMOVBE EAX, EDI 
CMOVNB BX, CX 
AND RBX, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RBX] 
IMUL EDX, EBX, -91 
SBB AX, 4788 
CMOVS EDX, EAX 
JMP .bb_main.1 
.bb_main.1:
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
ADD RAX, -1177208088 
AND RCX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RCX] 
XCHG ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDI] 
ADD DL, BL 
LEA EAX, qword ptr [RAX] 
SBB BL, 72 
INC RDI 
MOVZX EAX, DI 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
MOVZX EDX, BL 
SETNS DL 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DI 
ADC RBX, -22 
SETB CL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], AL 
IMUL ECX 
OR DL, 26 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
ADD SIL, 47 # instrumentation
SBB AL, 55 
CMOVLE DI, AX 
CMOVBE BX, AX 
CLD  
JMP .bb_main.4 
.bb_main.4:
SUB DI, BX 
AND RBX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RBX] 
IMUL DI, AX 
XOR RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
