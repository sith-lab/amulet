.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RDX, DIL 
MOVZX RSI, CL 
IMUL EDX 
CMP RDI, RAX 
CMOVNBE ECX, ESI 
CMOVLE RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RBX] 
SBB EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
SBB ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
MOV DL, -109 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RCX] 
CMOVLE BX, DX 
AND RAX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RAX], 45 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
LEA SI, qword ptr [RDX] 
DEC EAX 
XCHG AL, CL 
DEC DL 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
NEG DX 
XCHG BX, DX 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
CMOVLE ESI, ECX 
ADC RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
