.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 86 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDI] 
IMUL ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
JMP .bb_main.1 
.bb_main.1:
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
JS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 86 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
MOVZX DX, AL 
LOOPNE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ESI 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], BX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 21 # instrumentation
CMOVBE ECX, EAX 
CMOVNZ BX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RDX] 
ADC DI, AX 
SBB CL, DL 
CMOVO DX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
