.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 58 # instrumentation
LAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 15 
AND RDI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RDI] 
XCHG RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -99 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -23731 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 68 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RBX] 
CMOVP EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 22 
AND RCX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RCX] 
MUL EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
