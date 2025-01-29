.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX DX, CL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1129762585 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
NEG RBX 
MUL AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDI 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX] 
SUB DL, DL 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 97 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 93 
MOV CL, -17 
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -24 # instrumentation
SBB RAX, 1422031089 
MOVZX RAX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RAX] 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP CX, 0 
XCHG EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 73 
CMOVNL BX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RAX] 
ADD DIL, -15 
AND RAX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RSI 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
