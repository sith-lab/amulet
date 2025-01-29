.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], SIL 
AND RDX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDX] 
CMOVNZ AX, DX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, 50 # instrumentation
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
CMOVO ESI, EBX 
CMOVO RSI, RDI 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
MOVSX EBX, SIL 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
SUB RCX, 105 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RBX] 
NEG SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RSI] 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -112 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RBX] 
XCHG AL, AL 
CMOVNS RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -57 
CMOVLE EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
