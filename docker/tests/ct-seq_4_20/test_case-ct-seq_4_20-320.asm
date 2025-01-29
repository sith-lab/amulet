.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -83 
AND RAX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RAX] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 56 # instrumentation
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 7 # instrumentation
CMOVO RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RCX] 
MUL RAX 
AND RDX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -27 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
MOV DL, 70 
SUB RBX, 51 
SUB AX, -25803 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], SI 
ADC AL, 21 
CMOVNBE BX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX], -109 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
