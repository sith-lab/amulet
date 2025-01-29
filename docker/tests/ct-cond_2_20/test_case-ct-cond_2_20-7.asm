.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], AX 
SUB AL, -92 
CMOVNBE EBX, ECX 
CMOVP DI, SI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ESI 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], 19 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -21 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 108 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDI] 
SAHF  
MUL RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
