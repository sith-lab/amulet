.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 86 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDI 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
CLC  
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDX] 
ADD SIL, -33 # instrumentation
JNO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RCX], -113 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -80 
ADD CL, -118 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
XCHG ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDI] 
ADC DIL, CL 
CMOVZ AX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
