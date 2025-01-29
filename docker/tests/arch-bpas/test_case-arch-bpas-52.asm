.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 546536608 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -4 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], 1 
CMOVZ EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], EBX 
ADD DIL, -9 
CMOVNBE EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 92 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
SBB BX, -24 
MOVSX EBX, DIL 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -2 
XADD DL, AL 
SETNBE DL 
MUL CL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
ADC EDI, -118 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
CMOVNLE RBX, RCX 
SETZ DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], 20 
NEG RCX 
XCHG DL, SIL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], DI 
JMP .bb_main.4 
.bb_main.4:
CMPXCHG ECX, ESI 
IMUL CL 
OR RAX, 374596499 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDI] 
SAHF  
IMUL CL 
AND RDX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RDX] 
ADC AL, -64 
TEST RBX, 828954023 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
