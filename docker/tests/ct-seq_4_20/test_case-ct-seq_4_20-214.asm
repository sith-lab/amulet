.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DI 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], SIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDI] 
IMUL ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
ADC EAX, 2043576167 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 13 
IMUL RSI 
AND RBX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RSI] 
SBB EDX, 59 
MUL SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
