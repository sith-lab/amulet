.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -92353597 
AND RSI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RSI] 
MOVSX RCX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -29 # instrumentation
CMOVNZ RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDI] 
NEG ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 84 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -110 # instrumentation
CMOVNB RSI, RCX 
SUB DI, -24 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
