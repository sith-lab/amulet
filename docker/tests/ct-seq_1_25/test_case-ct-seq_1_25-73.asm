.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RSI] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
CMP SIL, DIL 
SUB AL, 74 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RBX] 
CMOVNO DX, DI 
CMOVLE EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
MOVZX RSI, DX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
CMOVO RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -83 
ADD RAX, 35302631 
CMOVBE ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RSI] 
CMOVNS DI, DX 
CMOVO RBX, RAX 
ADC RAX, 709012441 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 52 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
