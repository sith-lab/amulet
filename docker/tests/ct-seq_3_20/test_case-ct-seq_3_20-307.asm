.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 90 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 47 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -34 # instrumentation
CMOVL EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -126 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
CMOVP ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
MOVSX RAX, DIL 
CMP RCX, -118 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
