.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RSI] 
TEST AL, CL 
MOV RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RCX] 
LEA RDI, qword ptr [RSI + RDX + 41309] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], DIL 
SETLE AL 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 19 # instrumentation
SETL CL 
TEST EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DI 
AND SIL, BL 
XOR AL, 0 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RAX] 
TEST ESI, ESI 
XOR AL, SIL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -47 
CMOVP ECX, EDI 
NEG RBX 
OR DX, 1 # instrumentation
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  
CMP RAX, -1873541607 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], AL 
OR CX, 39 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], CL 
SETNP BL 
MOVSX RDI, DX 
TEST EDX, EDI 
BSWAP RBX 
CMOVL EDI, EDX 
CMOVNLE SI, AX 
XADD RAX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
