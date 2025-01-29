.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RBX] 
ADD DL, 124 
CMP DL, 26 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RCX] 
ADD BX, 39 
ADC AL, -128 
AND RCX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RDI] 
CLC  
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
MOV AL, 58 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RCX] 
CMOVP EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
