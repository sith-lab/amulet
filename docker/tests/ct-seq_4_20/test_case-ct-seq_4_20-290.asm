.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC DL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -107 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 51 
CMOVB RDI, RSI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
SBB EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 116 
XCHG EDI, EDX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 108 # instrumentation
CMOVNZ RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 91 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
ADD SIL, 76 # instrumentation
ADC DIL, 28 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RSI] 
DEC DL 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
