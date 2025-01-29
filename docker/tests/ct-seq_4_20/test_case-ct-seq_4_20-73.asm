.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 23 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
ADD DIL, -106 # instrumentation
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 52 
ADC AL, 12 
IMUL SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RCX] 
CMOVNLE ECX, EDX 
CMOVNBE AX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RAX] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 64 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RDI] 
CMOVNL DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
