.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI], -114 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RSI 
CMOVNO RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDX 
SETO AL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
CMOVS AX, BX 
OR RAX, -1251947092 
CMOVNP EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], 76 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], CX 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVZX DX, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DX 
AND RCX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RCX] 
ADD SIL, 35 # instrumentation
LAHF  
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -15 
CMOVZ ESI, EDI 
IMUL RDI 
ADC RAX, 183561767 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], DL 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
ADD SIL, 95 # instrumentation
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR CX, -47 
OR AL, -5 
CMOVNZ CX, AX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RCX] 
CMP AL, -26 
DEC ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], 111 
CMOVB CX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 85 
ADC AX, 12931 
SETO CL 
TEST BX, -29955 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
