.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -74 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -34 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 121 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RSI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX], 69 
SUB EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -66 
CMOVNLE CX, SI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
CMOVZ SI, BX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
