.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
SBB BL, -30 
AND AL, 43 
SETNZ BL 
MOV ESI, 1136065683 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], BX 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
ADD DIL, -73 # instrumentation
ADC BL, 40 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
XOR RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EDX 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
OR EDX, EDI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 65 # instrumentation
CMC  
AND RSI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RSI] 
CMOVNO ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDI] 
XOR AL, BL 
CMPXCHG EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
SBB SI, DX 
IMUL RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 23 
IMUL ESI, EAX, -63 
ADD SIL, -117 # instrumentation
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG AL, AL 
NEG DX 
SETNZ CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RBX] 
INC CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
SBB AL, 60 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDX 
MOVSX RAX, AX 
OR DL, 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
