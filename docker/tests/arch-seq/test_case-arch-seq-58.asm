.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 69 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RSI] 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
STC  
OR RDX, -88 
SETNB SIL 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
TEST CL, -66 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 104 
ADC SIL, -19 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], AL 
CMOVB EDX, EAX 
NEG DX 
SETZ BL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR CL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDI] 
CMP CL, AL 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
CMP SIL, SIL 
SETNP DIL 
CMP RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -26169 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RSI] 
ADD DL, -57 
CMOVZ RDX, RDX 
AND DX, AX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
SUB AX, 10545 
AND RDI, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RDI] 
STC  
CMOVNB ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RAX] 
CMP RDX, RBX 
INC RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
