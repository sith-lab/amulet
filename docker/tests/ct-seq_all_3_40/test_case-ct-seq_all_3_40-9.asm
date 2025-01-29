.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -99 # instrumentation
SETBE AL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], CX 
NEG AL 
IMUL EDX, ESI, -97 
DEC ECX 
CMOVNB RSI, RDX 
OR AX, -27 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
MOV DX, CX 
CMPXCHG AL, DL 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -26 # instrumentation
SETNBE AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
CMPXCHG DIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
ADC BX, SI 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
SETB BL 
ADC ECX, EAX 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EDX 
TEST AX, DX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -101 # instrumentation
SBB AX, 30580 
SAHF  
AND EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
SUB RAX, -1859743873 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
OR RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDI 
SETL CL 
AND RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDX] 
TEST DL, AL 
XCHG EDI, EDX 
OR EBX, 41 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
