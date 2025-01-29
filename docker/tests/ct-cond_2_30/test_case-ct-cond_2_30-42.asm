.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], SIL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
CMOVO EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -86 
XCHG ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
IMUL BX, DI, 67 
MUL BL 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 80 
AND RAX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RAX] 
CMOVZ AX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], BL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
NEG CX 
LEA RBX, qword ptr [RBX + RSI + 19267] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
ADD SIL, -102 # instrumentation
CMOVBE EDX, ECX 
CMOVS AX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -61 
CMOVS AX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RSI] 
SUB SI, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], AX 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI] 
MOVZX AX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
