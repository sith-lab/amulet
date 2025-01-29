.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ESI 
JNS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 113 
CMP RSI, 49 
MOV CL, AL 
SUB CL, -26 
SBB AL, 87 
ADC RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -52 
JMP .bb_main.2 
.bb_main.2:
CMP AX, -10252 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
CLC  
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -43 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -81 
CMOVZ RBX, RDX 
ADD AL, 8 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RBX] 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
CLC  
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DI 
SUB RDX, RAX 
XCHG RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
