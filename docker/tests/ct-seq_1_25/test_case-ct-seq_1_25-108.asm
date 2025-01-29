.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
IMUL RSI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
IMUL RSI, RDX, 54 
ADD RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX], 115 
MOV SI, 12577 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RCX] 
CMOVB RSI, RBX 
IMUL DL 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
XCHG ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RCX] 
ADC EDX, 113 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
