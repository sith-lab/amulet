.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
CMOVZ DX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RCX] 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
ADD DIL, -128 # instrumentation
CMOVS EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
ADD EAX, -73719222 
CMOVLE EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -106 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], DX 
CMP EDI, 98 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RCX 
XCHG AL, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 42 
IMUL DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
CMOVNP ESI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
