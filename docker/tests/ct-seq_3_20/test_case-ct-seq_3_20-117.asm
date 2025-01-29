.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, -578803223 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RSI] 
ADC RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 22 
IMUL RBX, RDX, 117 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RBX 
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
CMOVNS SI, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
ADD CL, AL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP DL, -72 
SUB EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
XCHG RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
