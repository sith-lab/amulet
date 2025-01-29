.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RCX], BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], 20471 
ADC EAX, -1150604777 
MOVZX EDX, CX 
IMUL RDX, RBX, -64 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
CMOVZ SI, AX 
CMOVL DX, AX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], SIL 
SUB EAX, EAX 
OR DL, 1 # instrumentation
SETNBE DL 
NOT RBX 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RAX] 
CMOVNL DX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 89 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB EAX, 105 
AND RDI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RDI] 
OR BL, 124 
XCHG RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI], 17 
IMUL RCX, RCX, 127 
AND RCX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RCX] 
AND BL, DL 
MUL AL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RBX 
DEC BL 
XOR AL, 88 
SUB RAX, 421692099 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 26753 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RSI] 
CMOVNB AX, BX 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
