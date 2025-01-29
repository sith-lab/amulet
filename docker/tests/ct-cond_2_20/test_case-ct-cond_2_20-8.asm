.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -89 # instrumentation
SBB AX, 239 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
IMUL RCX, RSI, -17 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RSI] 
CMOVNL AX, SI 
MOVSX RDI, DI 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], SI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 31 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -4781 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -37 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RBX 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
STD  
AND RDX, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
