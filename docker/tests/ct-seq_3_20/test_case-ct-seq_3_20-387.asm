.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 2 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RBX] 
CMP RAX, -676293077 
SBB AX, 26964 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 64 
CMOVLE RDX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
SUB DL, 80 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 53 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -16487 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -66 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -59 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
ADC EAX, -388389275 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
