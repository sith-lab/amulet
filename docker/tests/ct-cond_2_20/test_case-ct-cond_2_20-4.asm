.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 119 # instrumentation
CMOVLE RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
XCHG AL, AL 
AND RSI, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RSI] 
ADC RAX, 734064018 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RBX] 
SUB AX, 23589 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
ADD DIL, -88 # instrumentation
CMOVP EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -51 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
