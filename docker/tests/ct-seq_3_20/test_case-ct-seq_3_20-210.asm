.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 13038 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], SIL 
CMP AX, 29 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -2 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
IMUL ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
CMOVB ECX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -128 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -43 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -11 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDX] 
IMUL RSI, RDX, 27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
