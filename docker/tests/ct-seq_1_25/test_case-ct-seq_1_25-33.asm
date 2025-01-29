.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX DX, CL 
XCHG EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
CMOVS ECX, EAX 
CMOVNLE BX, SI 
AND RBX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 19 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -22 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RCX] 
CMOVNBE RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
CMOVNP SI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DI 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
