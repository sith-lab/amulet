.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RCX, RCX 
ADC AX, SI 
SBB RDX, 6 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RSI 
ADD AL, -95 
XOR AX, -18538 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
XCHG DI, SI 
CMOVNS DI, DI 
SETNL DL 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ECX 
AND RBX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RBX] 
CMOVNLE RCX, RBX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDI 
TEST AX, 26286 
ADD EAX, 1451551242 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], CL 
INC EDX 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 108 
SUB RCX, -37 
LEA RDX, qword ptr [RDI + RDI + 12646] 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], DX 
XOR AX, -22169 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV BL, -114 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDI] 
NOT EBX 
INC SI 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EBX 
NEG DL 
SUB ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDI 
CMOVNL DX, DX 
AND RAX, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RAX] 
XOR ECX, -56 
CMOVZ SI, CX 
TEST AL, 96 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
