.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -52 # instrumentation
ADC RSI, 56 
SETLE SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
SBB EAX, 1785922579 
CMP DIL, 34 
SETNS AL 
SBB CL, AL 
SUB EBX, 112 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
XOR EAX, 1548582190 
CBW  
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -59 # instrumentation
CMOVNS EDI, ESI 
OR EBX, -126 
SETNL CL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -61 
SUB DL, DL 
ADD BL, CL 
TEST RAX, -2112027242 
AND CL, BL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], -33 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DIL 
SETLE DIL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
SUB CX, -77 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -100 
NOT ECX 
DEC DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDI] 
DEC AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RCX 
SETNB DL 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], SI 
SETZ CL 
IMUL AX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
INC AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
