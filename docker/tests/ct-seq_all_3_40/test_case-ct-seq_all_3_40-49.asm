.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RAX, RDX 
SETNLE BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RBX] 
CMP DL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDX] 
MOVSX EBX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 89 
SBB AX, CX 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
MOVZX BX, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], SI 
CMC  
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
CMOVLE EDX, EDI 
SUB SI, AX 
CMPXCHG CX, BX 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 28 
MOV DX, -11440 
XOR CL, 44 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], SIL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX] 
SBB AL, 14 
CLD  
AND RDI, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RSI] 
NEG RAX 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], -106 
XCHG RDX, RAX 
XCHG RDI, RDX 
CLD  
AND AL, 32 
TEST AX, -2714 
SETNL BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RAX] 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
