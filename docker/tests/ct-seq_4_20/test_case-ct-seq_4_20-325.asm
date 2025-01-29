.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RCX] 
CMOVO RBX, RAX 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CMP CL, BL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
INC EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
SBB EAX, -709135359 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RBX] 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
IMUL RBX, RDI, 107 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
