.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -109 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DIL 
IMUL RDX, RDX, 58 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RBX] 
MOVZX BX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -117 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], AX 
CMOVL RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -113 
AND RDI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
