.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], CX 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RBX] 
MOVZX EAX, AL 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB BL, DIL 
AND RBX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
JL .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
SUB ECX, -88 
MOVZX EDX, DI 
ADD EAX, 1077084537 
SUB BL, 79 
LOOPE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -5 
ADD RAX, 1304813334 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
CMOVS RBX, RDI 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -50 # instrumentation
CMOVNB AX, DI 
XCHG SI, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
CMOVNLE BX, CX 
CMP SI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -36 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RSI] 
SUB EDX, 41 
XCHG RSI, RDI 
SBB DIL, 33 
CMC  
CMOVBE RSI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
