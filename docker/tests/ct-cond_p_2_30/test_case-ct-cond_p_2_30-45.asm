.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 44 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
CMP AL, 9 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX], -81 
ADD DIL, -16 # instrumentation
CMOVL EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -46 
ADC EBX, EDI 
IMUL AL 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DI 
ADC EDX, -11 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -126 # instrumentation
ADC EAX, -1860863974 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RAX] 
MOVSX RDI, DX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 65 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDI] 
CMOVB RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 120 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
ADD DIL, DIL 
SUB EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDI 
ADD CL, 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
