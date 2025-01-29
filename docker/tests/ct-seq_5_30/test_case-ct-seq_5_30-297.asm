.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG RCX 
XCHG ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -20 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
MOV RBX, RDX 
MOV RDI, RDI 
MOVSX ESI, DX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RCX] 
ADD ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
ADD SIL, -80 # instrumentation
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EBX 
CMOVNP RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DIL 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 82 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -82 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -96 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 105 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 27 # instrumentation
CMOVB ESI, EAX 
CMOVNS SI, AX 
CMOVBE RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RCX] 
CMOVL ESI, EDX 
ADC RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RAX] 
INC ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
