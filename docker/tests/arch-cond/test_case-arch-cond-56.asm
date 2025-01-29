.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -18 # instrumentation
CMOVZ CX, AX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
TEST RAX, 334202319 
MOVZX ECX, AL 
AND AL, AL 
CMOVNL CX, BX 
OR SIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
ADD DL, CL 
AND RDI, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 72 # instrumentation
SBB EDI, 110 
CMPXCHG DI, CX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], -91 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], 126 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDX 
XCHG CX, CX 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP BX, BX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
ADD SIL, -42 # instrumentation
SETP AL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], 16 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
CMP RAX, 1529284204 
SETZ CL 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
SUB AL, CL 
CMOVNBE RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 467920302 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RSI] 
ADC RAX, 1129534272 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RCX 
AND RAX, 2097108663 
SBB ECX, -53 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
OR RBX, -98 
CDQ  
CMPXCHG ESI, EDI 
CMOVLE CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
