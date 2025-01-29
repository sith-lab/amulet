.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RBX, -60 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX] 
OR SI, CX 
AND ECX, 67 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
MOV AL, DIL 
SETBE CL 
CMOVNZ SI, SI 
CMP DI, -87 
SETNL CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
SETNS BL 
SBB CL, BL 
SBB RAX, 725946361 
SUB EDX, EAX 
NEG EAX 
CMOVBE EBX, EBX 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 72 # instrumentation
SETNB AL 
OR SI, -24 
AND RSI, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RSI] 
XOR SI, -81 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
INC ECX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 15 # instrumentation
CMOVLE RDI, RDI 
IMUL RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], SIL 
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
OR RBX, RDI 
INC DI 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RCX] 
ADD DIL, 33 # instrumentation
CMOVNLE AX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
CMPXCHG DL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
CMOVO RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
