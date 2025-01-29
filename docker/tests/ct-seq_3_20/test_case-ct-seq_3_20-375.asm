.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 106 # instrumentation
CMOVNO EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
SUB EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RSI] 
INC BL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ECX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -59 
MOVZX DI, DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
LEA ECX, qword ptr [RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX] 
ADD SIL, 10 # instrumentation
CMOVNP DX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
