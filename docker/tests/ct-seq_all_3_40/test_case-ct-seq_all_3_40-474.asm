.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 109 # instrumentation
CMOVL RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], SI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDI] 
AND DIL, -74 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 19 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DIL 
OR RCX, 61 
SETNZ CL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 115 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], 10 
SETP BL 
SETZ CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RDI 
ADD DL, 52 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], CL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
OR RCX, -21 
AND DIL, CL 
TEST RAX, -979010037 
MUL CL 
OR DL, -52 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR DIL, DL 
MOV ESI, ESI 
CMP RAX, -1978122038 
XCHG RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RAX] 
CMPXCHG CL, DIL 
AND RDX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RDX] 
ADD RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
INC ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
