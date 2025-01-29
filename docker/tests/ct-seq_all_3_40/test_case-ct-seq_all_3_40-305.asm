.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 56 # instrumentation
SETB DL 
AND RDX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RDX] 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RCX] 
CMOVNB EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDX] 
SBB AX, DX 
CMOVB ESI, EBX 
OR DI, 50 
AND SI, CX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RDI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR SIL, -57 
ADD DIL, -74 # instrumentation
XCHG EDI, EAX 
SETS AL 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RSI] 
XOR ESI, EBX 
CMOVL EDX, EDX 
SETL CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], EDI 
SUB RAX, 120 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 108 
MOV EDX, EDI 
CMOVNB SI, DI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
NEG EAX 
IMUL RSI, RAX, -17 
XADD CX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ECX 
SBB AX, 416 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
SAHF  
CMPXCHG DL, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDI] 
INC EBX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
