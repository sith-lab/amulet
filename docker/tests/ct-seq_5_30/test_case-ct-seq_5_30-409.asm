.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 85 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMOVP BX, SI 
AND RAX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RAX] 
MOVZX ECX, BL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -21 # instrumentation
CMOVNS RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DI 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], SI 
MOVZX EAX, DL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DI 
CMOVL DX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDX] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -75 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
ADD DIL, 101 # instrumentation
CMOVLE EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -24 
SBB DL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -4 
ADC BX, DX 
ADC SIL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
