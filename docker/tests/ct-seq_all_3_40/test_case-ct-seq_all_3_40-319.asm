.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
LEA DX, qword ptr [RAX + RDI] 
ADC BL, DL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RSI 
AND RSI, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RAX] 
ADC EAX, 1001649239 
XCHG BX, AX 
OR BL, DL 
MOVSX ECX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
SBB CX, DX 
ADD AL, DL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP AX, -28462 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
SETS CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
MOV AL, 11 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI], -108 
OR DL, -77 
JMP .bb_main.2 
.bb_main.2:
NOT AX 
MOVSX AX, CL 
IMUL RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 44 
CMOVNS RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], SIL 
AND EAX, -38 
MOVZX RDI, DIL 
TEST ECX, -2106023659 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
OR CX, 73 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], -96 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
