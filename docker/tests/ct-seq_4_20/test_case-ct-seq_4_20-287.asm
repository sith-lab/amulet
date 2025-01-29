.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 116 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDI] 
CMOVBE RCX, RDX 
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
CMOVNO SI, DI 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -90 
DEC ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -11 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -112 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], CX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDX 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX RAX, SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDX] 
MOV CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
