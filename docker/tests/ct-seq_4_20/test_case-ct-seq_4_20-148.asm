.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
XCHG EBX, EAX 
CBW  
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
ADC AX, -5027 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDI] 
CMOVLE CX, DX 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SI, -116 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 125 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -102 # instrumentation
ADC CX, SI 
MOV AX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 72 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
