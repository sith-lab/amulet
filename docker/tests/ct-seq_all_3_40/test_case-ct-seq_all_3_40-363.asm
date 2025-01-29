.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RBX, RSI, -29 
TEST AL, -67 
SETNS DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RCX] 
IMUL DX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDX] 
ADD SIL, 47 # instrumentation
SETP AL 
ADC BL, BL 
TEST BX, -14318 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
AND BL, SIL 
CMOVL EDI, ESI 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
NOT CX 
MOVSX EAX, AL 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], -104 
SETP AL 
SETNB SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RAX] 
AND RSI, -39 
OR AX, 22172 
SETNS CL 
CMOVNLE DI, AX 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
IMUL EDX 
CMPXCHG CX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
IMUL EDX, EBX, 76 
ADD SIL, -115 # instrumentation
CMOVNB AX, CX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
SETNS DL 
XADD CX, CX 
AND RAX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RAX] 
MOVSX RAX, DIL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDX] 
SETL DL 
CMP RAX, RAX 
BSWAP EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
