.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RAX] 
ADC DIL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RDX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 20 # instrumentation
CMOVO RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -53 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -33 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 102 
IMUL CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ECX 
AND RBX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
