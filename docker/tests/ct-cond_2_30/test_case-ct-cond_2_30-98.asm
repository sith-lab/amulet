.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG ESI 
AND RDX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], SI 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DIL 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
CWD  
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], CX 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI] 
CMOVB ESI, EAX 
OR DL, 1 # instrumentation
ADC BL, -68 
MOVSX DX, AL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -15 
ADC EAX, 1606361121 
IMUL RAX, RSI, 19 
SAHF  
ADD RAX, 823130239 
INC CX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RBX 
ADD DIL, -122 # instrumentation
XCHG RSI, RAX 
CMOVBE EAX, ECX 
CMOVZ EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -65 
ADD EDI, ESI 
CMOVNP RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -48 
MOV ESI, -917707730 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
