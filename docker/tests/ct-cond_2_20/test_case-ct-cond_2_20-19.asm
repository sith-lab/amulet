.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 120 
ADC EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RBX 
MOV DI, CX 
ADC RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RSI] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RBX] 
ADC CL, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 2 
SUB RDX, 86 
AND RSI, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RSI] 
XCHG EAX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
