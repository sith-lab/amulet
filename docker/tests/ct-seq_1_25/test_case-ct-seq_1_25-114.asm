.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RCX] 
CMOVBE RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RCX] 
MOVSX BX, DIL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RAX] 
CLC  
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RBX 
MOVSX ECX, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RCX 
SUB DL, 43 
CMOVNBE RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX], 38 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
