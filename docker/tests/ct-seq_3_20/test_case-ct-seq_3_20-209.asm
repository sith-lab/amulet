.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
CMP EAX, 52 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -117 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DI 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
CMOVB AX, BX 
CMOVNLE SI, CX 
CMOVNBE EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RCX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RSI 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DX 
CMOVLE RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -21 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
