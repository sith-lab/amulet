.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DIL 
ADD BX, DI 
NEG DIL 
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -1238803142 
CMOVNLE EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 100 
CMP DIL, -121 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 62 # instrumentation
CMOVNL AX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -114 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
SBB AL, 100 
CMP DL, -118 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDI] 
CMP RCX, -114 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RSI] 
ADC AL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -876908742 
MUL BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RAX 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
MOVZX EDI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
