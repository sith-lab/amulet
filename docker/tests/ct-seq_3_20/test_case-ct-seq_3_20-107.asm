.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AL, SIL 
CMP AL, DL 
CMOVNLE ESI, EDX 
CMP AL, 74 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], SIL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 64 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
INC AL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RBX] 
ADD EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDX 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
