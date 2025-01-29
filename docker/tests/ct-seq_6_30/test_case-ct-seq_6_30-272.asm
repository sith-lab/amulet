.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LOOP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, -1 # instrumentation
CMOVNO RCX, RAX 
NEG EDX 
CMP AL, -102 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
MOV RBX, RBX 
JMP .bb_main.2 
.bb_main.2:
CMP AL, CL 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 61 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
SUB AX, -5117 
CMOVNB RAX, RDI 
JNL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
MOVSX DI, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
SBB DL, SIL 
ADD AL, 56 
JMP .bb_main.4 
.bb_main.4:
ADD DI, 6 
NEG RAX 
ADC SIL, -25 
CMOVNBE RDI, RAX 
CMOVS EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
LOOP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDI 
ADD DIL, 18 # instrumentation
CMOVNO AX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -24 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], -61 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDX] 
INC EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
