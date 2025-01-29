.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -12 # instrumentation
CMOVNLE BX, CX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 57 
SUB DIL, -66 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 943373933 
CMOVS RDX, RAX 
JNP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
CMOVZ CX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDX] 
CMOVNZ DX, DX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -27 # instrumentation
SBB EDI, -37 
MOVZX RCX, SIL 
SBB DL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP SIL, DIL 
SUB EAX, 1843253706 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], AL 
CWD  
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -29 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
