.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 88 # instrumentation
MOVSX RAX, DL 
MOVZX RSI, DIL 
CMOVB ECX, EDX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RBX] 
CMOVNZ DI, SI 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], AX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
MOVSX RDI, SI 
ADD EAX, -1668357982 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
MOVSX ESI, DL 
CMOVP EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], SI 
IMUL RBX, RCX 
ADD SIL, 102 # instrumentation
CMOVZ ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
XCHG AL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -3 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
SUB CL, DL 
ADC RAX, -1812311450 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RAX 
CDQ  
SUB CL, -105 
AND RDX, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
