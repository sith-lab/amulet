.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
CMOVNL EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -27 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RAX] 
ADD DIL, -104 # instrumentation
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
CMOVZ RDX, RDI 
IMUL BX 
ADD DIL, 54 # instrumentation
CMOVNZ BX, SI 
CMOVNZ RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDI] 
MOV DI, -2238 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
CMOVBE DI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RBX] 
XCHG AL, BL 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -78 # instrumentation
CMOVBE RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDX] 
DEC RSI 
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI] 
ADD DIL, -89 # instrumentation
XCHG DI, SI 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MUL CL 
SBB RCX, -14 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
CWD  
MOV ESI, -1553783736 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
