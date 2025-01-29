.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RSI] 
MOVZX EDX, DIL 
SUB SIL, CL 
ADC AL, 40 
JB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 93 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
MOVZX RDI, DI 
CMOVP RDI, RDI 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 60 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -119 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 27 # instrumentation
SBB AL, 106 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ECX 
CMP AX, 11 
MOV RBX, RAX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -87 
ADD AX, 18919 
CMP AL, -15 
ADD CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
