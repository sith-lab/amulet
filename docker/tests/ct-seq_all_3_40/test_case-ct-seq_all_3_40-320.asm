.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], BL 
AND AX, -23182 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 48 
AND RDX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RBX] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], AL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RCX], -33 
AND RAX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RAX] 
AND SIL, AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], -56 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], -5 
TEST AX, -8347 
XADD DL, AL 
XOR CL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RDX 
CMOVNBE RBX, RDI 
INC SIL 
CMOVNB SI, AX 
SETP CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], DX 
SETNL AL 
CMOVNP EDX, ESI 
CMOVNLE RDI, RCX 
XCHG RSI, RAX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX RSI, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RBX] 
CMOVO AX, BX 
CMP RAX, -845417006 
MOV AL, 8 
IMUL RDX, RDI, -118 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
XADD DL, DL 
SUB AL, CL 
AND RBX, 0b1111111111111 # instrumentation
SETNZ CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
