.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDI, EAX 
SUB RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
ADD DL, -11 
MUL RAX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 119 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
SUB AL, -48 
ADD ESI, -87 
CBW  
ADD SI, -28 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 42 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 17 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDI 
NEG CL 
IMUL ECX, EDX, -89 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
MUL CX 
AND RDI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
