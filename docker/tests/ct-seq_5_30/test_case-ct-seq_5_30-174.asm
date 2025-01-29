.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DIL, -41 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
MOV AL, -28 
ADD ESI, EDX 
ADC RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDX] 
MOVSX DX, BL 
MOVZX RDX, SIL 
CMP RBX, 99 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 115 
CMOVP BX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
MUL EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
ADC DI, 114 
SUB EAX, 257600921 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
SBB AL, SIL 
OR AX, 0b1000000000000000 # instrumentation
BSR CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RSI] 
INC CL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD AL, -120 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -59 # instrumentation
CMOVNB AX, CX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -81 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
