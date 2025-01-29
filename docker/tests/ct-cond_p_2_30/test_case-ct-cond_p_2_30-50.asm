.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 70 # instrumentation
CMOVNBE EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1419515757 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -45 
CMOVB DI, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
MUL CX 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADD DIL, -122 # instrumentation
CLC  
CMOVZ AX, SI 
IMUL DX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDX] 
SBB SIL, 78 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], ECX 
CMOVNB EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RSI 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
SBB SIL, -90 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD AL, -76 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1300795425 
CMOVNZ EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
DEC DIL 
CMOVNB CX, CX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RSI] 
CMP AL, -66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
