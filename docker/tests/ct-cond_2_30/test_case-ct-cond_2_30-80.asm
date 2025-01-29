.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
MOVZX RCX, BX 
MUL BL 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RAX 
MOVZX AX, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
INC EDX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 47 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
CMOVP RDX, RAX 
IMUL DX, SI 
ADD RDX, RSI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDX 
CMOVO EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
NEG BL 
IMUL DI, DX, -65 
DEC RBX 
CWD  
CMOVBE RBX, RCX 
SBB AL, -29 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
ADC EAX, 51 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RCX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
