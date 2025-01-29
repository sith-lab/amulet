.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP SIL, SIL 
SAHF  
CMP BL, -68 
CMOVLE EDI, ESI 
CMOVL RDX, RSI 
SBB ECX, 23 
CMP ESI, -23 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ESI 
CMC  
NEG RDX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
CMOVL RBX, RBX 
DEC DL 
MOV AL, -100 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
CMP ECX, 5 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RAX] 
ADD DIL, -35 # instrumentation
ADC DIL, SIL 
ADC EAX, -1037808329 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RSI] 
ADD DIL, 43 
STC  
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
SUB AL, -13 
ADD AL, DL 
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
MOVZX RDX, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EBX 
CMP EAX, 1700856017 
CMOVZ BX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
