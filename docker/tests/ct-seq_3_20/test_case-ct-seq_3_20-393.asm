.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
IMUL DL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NEG EDI 
AND RAX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
XCHG CX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 49 
MOVZX RAX, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
