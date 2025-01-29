.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -5 # instrumentation
ADC RCX, RDX 
CMOVB EAX, ECX 
XCHG DX, CX 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
XCHG DL, BL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD DIL, 37 # instrumentation
CMOVBE RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -107 
CMOVZ DX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -9 # instrumentation
CMOVP EBX, ESI 
CMP DI, -88 
IMUL DI 
IMUL RSI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
SAHF  
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX] 
IMUL ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
CMOVNLE RDI, RAX 
XCHG RAX, RAX 
ADC AL, CL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
MOV EDI, ESI 
MOV RCX, RAX 
DEC RDX 
CMOVS AX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
