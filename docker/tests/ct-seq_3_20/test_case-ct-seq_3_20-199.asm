.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI], -77 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDX] 
CMOVL AX, AX 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -72 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDX 
AND RBX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
ADD AL, -35 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 74 # instrumentation
ADC DIL, -117 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
