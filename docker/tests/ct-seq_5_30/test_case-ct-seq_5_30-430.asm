.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 81 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
MUL BX 
CMP RAX, -1102903462 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
CMOVLE SI, SI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1277494314 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RAX 
ADD SIL, 40 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MUL AL 
SUB AL, 44 
MOVSX SI, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RAX] 
CMOVB RSI, RCX 
NEG EBX 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -11 # instrumentation
CMOVNL RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 125 
AND RSI, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RSI] 
XCHG DL, BL 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -100 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -9 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
DEC CL 
CMOVLE RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RBX] 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -87 # instrumentation
ADC CL, -105 
IMUL RCX 
ADD SIL, -78 # instrumentation
CMOVB AX, AX 
CMOVL RSI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
