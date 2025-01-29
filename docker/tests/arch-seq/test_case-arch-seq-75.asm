.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -38 # instrumentation
CMOVLE EDX, EAX 
SETNS BL 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RAX], EDX 
STC  
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -29023 
CMP EAX, -252287633 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -81 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
SETS AL 
CMOVNL RDI, RSI 
MOVSX RAX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RAX] 
CMOVNO RCX, RDI 
SETL BL 
LEA RBX, qword ptr [RCX + RSI + 903] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST EBX, -1279818677 
SBB EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RDI] 
SUB EAX, -522023844 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 97 
CMOVP RDI, RDX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDX] 
SETNBE SIL 
SETNBE BL 
NEG RSI 
ADD SIL, -64 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
XOR DIL, 117 
ADC EDX, 61 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 5 
ADD AX, -31311 
AND RDI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
LEA CX, qword ptr [RDI + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
