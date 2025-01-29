.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 15 # instrumentation
SBB EAX, 2120577243 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDI] 
CMOVNP DI, BX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 119 
CMOVNLE SI, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 76 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RBX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
ADD AL, AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX], 10 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RAX] 
CMP RDI, RAX 
CMOVNZ EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 84 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
SUB BX, -41 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
ADD RSI, RDI 
ADD RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 60 
NEG BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX], 64 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -47 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
SUB BL, AL 
XCHG RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
