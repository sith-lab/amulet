.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
ADC RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 16 
CMOVL RDI, RSI 
NEG ESI 
CMP AL, 123 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
CMP EBX, EDI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -36 
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
ADD CL, 21 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
SUB RAX, 308831461 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX], 50 
MOVSX DI, DIL 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -95 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 33 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 73 # instrumentation
CMOVB RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 112 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 16 
MOVSX RAX, SI 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
