.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -32 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -47 # instrumentation
CMOVNS ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
MOV EAX, 1263693554 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 41 # instrumentation
CMOVNB ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
ADD DIL, -121 # instrumentation
CMOVP ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RBX] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
STD  
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
