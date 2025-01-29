.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
XCHG CL, SIL 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -51 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
ADD DIL, -6 # instrumentation
CMOVLE RSI, RBX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
INC DL 
CLD  
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI], 111 
MOVZX ECX, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
