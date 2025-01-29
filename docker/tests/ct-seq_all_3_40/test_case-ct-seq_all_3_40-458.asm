.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -114 # instrumentation
CMOVNBE DX, DI 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADD DIL, 88 # instrumentation
CMOVNO RCX, RSI 
CMOVNLE RAX, RSI 
LEA ECX, qword ptr [RAX] 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], CL 
SAHF  
TEST CX, AX 
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
ADD DIL, -18 # instrumentation
CMOVO SI, DI 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RAX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EBX, ECX 
SBB CL, CL 
MUL DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
CMOVNP SI, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -95 
SETL AL 
CMOVNS RDI, RCX 
CMOVNB DX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -1936573753 
XOR ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDX] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB DIL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], -86 
SUB EDX, EDX 
CMP AX, 25880 
MOV EBX, EBX 
OR DX, SI 
ADC AX, DI 
MOV EBX, -532342878 
AND RCX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], SIL 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 23 
AND CL, AL 
CMOVB BX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
