.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -100 
XCHG EDX, ESI 
CMOVLE RDX, RDX 
MOVSX EDX, CL 
SBB RAX, 21 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
CMP EAX, -1851034312 
SBB SI, -91 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -124 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RBX] 
CMOVNP DI, CX 
CMOVBE SI, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RAX] 
CMOVO EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RAX] 
CMOVS EDX, EDX 
CMP DL, 88 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
