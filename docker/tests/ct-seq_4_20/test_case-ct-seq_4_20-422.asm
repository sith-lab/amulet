.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -96 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
IMUL EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RSI 
JMP .bb_main.1 
.bb_main.1:
MOV CX, -2812 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -66 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 73 
MOVZX RDI, DX 
SUB SIL, -10 
ADC DI, 127 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RCX] 
ADC AL, DIL 
CMOVS BX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
