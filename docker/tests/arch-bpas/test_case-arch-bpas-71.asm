.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 119 # instrumentation
CMOVNP RDX, RAX 
SBB AL, -107 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDI] 
TEST EAX, 978536177 
SUB RAX, -110150980 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -44 
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
OR AL, 41 
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
CMOVNLE CX, AX 
ADC CX, -10 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RSI] 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CDQ  
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], SIL 
MUL RBX 
TEST CL, -126 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], DIL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL CX 
ADD SIL, -85 # instrumentation
SETNB AL 
CMOVP RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RBX] 
TEST CX, 13062 
IMUL EDI 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 97 
SUB AX, 28647 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -80 
MOV ESI, EDX 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -83 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1866221212 
TEST DX, 27455 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD SIL, -66 # instrumentation
SETBE BL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DIL 
ADD RDI, RSI 
SETNZ DL 
CMOVB RSI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
