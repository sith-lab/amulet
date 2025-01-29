.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
XCHG DI, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RCX] 
SBB AL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
ADC EAX, 41 
CMP RDI, RCX 
IMUL SI, DX 
ADD AX, -28003 
STC  
AND RCX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RCX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -69 # instrumentation
SBB RBX, RAX 
MOV AL, -12 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDI 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -73 
ADC CL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 29 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
MOVZX EDX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
