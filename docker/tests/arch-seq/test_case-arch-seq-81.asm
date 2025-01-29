.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -106 # instrumentation
CMOVNBE RCX, RAX 
ADC EAX, -857769623 
SETNZ BL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
SETNZ DL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], SIL 
NOT DL 
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
SBB BL, CL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDX] 
IMUL RDI, RSI, -2 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EAX 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DIL 
MOV ECX, 184139992 
IMUL DI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
STD  
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -17 
AND RDX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ECX 
IMUL ESI 
ADD DIL, -23 # instrumentation
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RSI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RSI] 
XCHG RDI, RAX 
INC EDI 
BSWAP EDX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
MOVSX RBX, CX 
SETNS CL 
SETZ CL 
XCHG AL, DL 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  # instrumentation
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
AND CL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RAX] 
CMPXCHG DIL, CL 
OR EDX, 5 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND DX, -68 
CMPXCHG CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
