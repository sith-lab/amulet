.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 2000924316 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
CMOVL RBX, RBX 
CMP EDI, -42 
SUB RCX, RDX 
DEC AL 
MOV CX, AX 
CMOVBE EDI, ECX 
ADD AX, 19261 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
IMUL DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RDX] 
SUB RAX, -1188818623 
CMOVZ ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 33 # instrumentation
MOV AX, -13370 
CMOVB CX, SI 
AND RBX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
CMOVNBE AX, AX 
CMOVNB EAX, EDI 
CMOVNB DI, DX 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 81 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
