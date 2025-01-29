.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDX 
DEC BL 
INC DL 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
ADD DX, -75 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EAX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 37 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
MOVZX EAX, DIL 
ADD DX, SI 
LEA RCX, qword ptr [RBX + RDI + 56279] 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -98 
IMUL RDI, RDI, -9 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 94 
SUB CX, DX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DIL 
SBB RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
