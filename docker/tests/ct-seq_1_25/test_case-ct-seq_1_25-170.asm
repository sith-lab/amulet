.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -23 # instrumentation
CMOVP ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
MOV AL, 68 
CMOVS EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
CMOVNBE CX, DI 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDI] 
CMOVBE CX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 77 
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RCX] 
IMUL DIL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
CMOVNB RDX, RSI 
XCHG BL, DL 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
