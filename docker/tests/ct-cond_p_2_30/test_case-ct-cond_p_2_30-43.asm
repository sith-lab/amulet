.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], CX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RCX] 
MOVZX CX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -50 
CMOVNS SI, DI 
CMOVP EAX, EAX 
SBB ECX, EDX 
MOV RDI, -1834683922983424175 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDI] 
ADD SIL, 123 # instrumentation
CMOVNLE EAX, ESI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
CMOVNLE EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 22 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -103 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
ADD SIL, -4 # instrumentation
SBB DIL, -20 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
CMP AX, 11796 
SBB RAX, -106 
ADD RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 62 
CMOVNLE BX, DX 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RAX] 
CMOVL EDX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
