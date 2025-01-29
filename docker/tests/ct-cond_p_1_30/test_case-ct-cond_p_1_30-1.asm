.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -71 # instrumentation
CMOVNBE ECX, EDX 
MOVSX EDI, AL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
BSWAP EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], 10 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -25 
CMP RDI, RAX 
CMOVL AX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -121 
SBB AL, 42 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RSI] 
SUB EAX, 985798124 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], AL 
MUL EAX 
OR DL, 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ECX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -67 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
SBB CL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
