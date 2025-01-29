.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
XOR CL, DL 
AND BL, -86 
AND RAX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RBX] 
ADC AX, -16222 
SETBE AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
NOT CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDI] 
SUB DL, -91 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 75 # instrumentation
ADC DX, 33 
XOR BL, DL 
SBB CX, -69 
OR RAX, 874694307 
XCHG RSI, RCX 
ADD DX, 91 
SBB RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
TEST BL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], -32 
TEST RAX, 1840552952 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ESI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RSI] 
MOV DI, -13983 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], BX 
ADC BL, CL 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
ADD RBX, -49 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RBX 
OR DL, 1 # instrumentation
MOVZX EAX, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RAX] 
ADD DIL, -78 # instrumentation
SETO BL 
CMPXCHG EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
