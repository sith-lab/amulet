.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
IMUL CL 
ADD SIL, -68 # instrumentation
JNP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
NEG RDX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
ADD DIL, -96 # instrumentation
CMOVNP EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
SUB AL, DIL 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD AX, 28774 
CMOVLE EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -6 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 93 
MOVSX EBX, CX 
NEG SIL 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -96 # instrumentation
SBB EAX, -1821955809 
IMUL EDX 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -40 
CMOVO RSI, RDX 
CMOVL EDI, EAX 
ADC RAX, RCX 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
CMOVZ RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP AL, -49 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -102 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
NEG ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
