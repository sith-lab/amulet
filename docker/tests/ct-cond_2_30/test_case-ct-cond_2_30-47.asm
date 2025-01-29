.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDI] 
MOV RDI, RDI 
XCHG RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
IMUL CL 
SBB DL, AL 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
ADD RSI, -61 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -94 
SBB BX, 20 
IMUL EAX, ECX, 18 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP AX, -5724 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -104 
AND RBX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDI] 
CMOVZ ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
MOV SI, CX 
XCHG BX, AX 
IMUL RCX, RCX, 116 
INC RSI 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
IMUL EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 77 
SBB RDI, 74 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
