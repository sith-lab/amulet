.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 2093649922 
SBB SI, -28 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
ADD DIL, -107 # instrumentation
ADC RCX, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], BX 
ADC RAX, 1216712714 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
INC DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RCX] 
ADD AL, -67 
ADD AL, -2 
CMOVNLE EDI, EDX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -113 
AND RDX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RDX] 
SETNB DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
CMP AL, -89 
ADC DL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -58 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], AL 
SBB CX, 116 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -52 # instrumentation
CMOVNL RSI, RDI 
ADD CX, SI 
CMPXCHG RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], 16 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDI] 
SETS DL 
LEA EAX, qword ptr [RCX + RDX] 
MOV CL, DL 
SETNL DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
