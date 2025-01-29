.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RBX, DL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 4 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
SUB AL, -95 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
CMOVNB EBX, EDX 
MOVZX SI, DL 
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
BSWAP EAX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI] 
SBB RAX, -57 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DX 
CMOVNZ RDX, RDX 
CMOVLE AX, SI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
CMP EAX, 2075335794 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
