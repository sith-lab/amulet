.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB CL, -25 
XCHG CL, DL 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
SAHF  
SUB AL, -97 
ADC DIL, -108 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], CX 
NEG DX 
CMOVLE EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
CMOVNL RBX, RCX 
ADD ESI, -94 
SBB ESI, -16 
IMUL BX 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
NEG RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -34 
CMOVP DX, CX 
CMOVNP EAX, ESI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 7 
ADD EAX, 665996536 
SUB RAX, 1618963566 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
CMOVNLE RAX, RSI 
CMOVB DX, DX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -114 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
