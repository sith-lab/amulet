.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -6 # instrumentation
ADC AL, DL 
DEC DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 117 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD AL, DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDX] 
SUB DIL, 44 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RSI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -11522 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
