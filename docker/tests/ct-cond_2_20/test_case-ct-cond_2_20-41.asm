.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
CMOVNS EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DI 
SBB CL, 55 
AND RSI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DL 
DEC BL 
CMOVZ DX, SI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 37 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDX 
SUB DL, -116 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RAX] 
SUB BL, -24 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
