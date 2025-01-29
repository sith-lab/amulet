.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -24 # instrumentation
CMOVNLE ESI, ESI 
XCHG DL, BL 
MUL ECX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
CMP EAX, 345109527 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
STC  
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -125 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
CMOVLE DI, DI 
IMUL SI, BX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDI] 
NEG RSI 
CMP AX, 24933 
AND RDI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDI] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RSI] 
INC ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
ADC DI, 83 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 2111168045 
NEG EDX 
CMOVBE BX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RBX] 
ADC DL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
