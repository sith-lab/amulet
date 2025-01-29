.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP CL, AL 
ADC ECX, -127 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -96 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 1057760669 
CMOVNB CX, BX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 0 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
XCHG AX, DI 
INC DL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], -5 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RAX 
MOV AL, SIL 
SUB EAX, -117 
DEC AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
