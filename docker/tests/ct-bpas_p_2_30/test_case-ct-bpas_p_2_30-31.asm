.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV CX, SI 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RDX] 
SUB BL, DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
DEC BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RSI] 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 49 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 113 # instrumentation
MOV AL, AL 
CMOVNZ RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDX] 
XCHG CL, AL 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
CMP DI, 23 
ADD RSI, RSI 
CMOVNO EBX, EDX 
IMUL DI, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RDI] 
MUL RSI 
MOVZX RCX, AX 
NEG EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 10 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
