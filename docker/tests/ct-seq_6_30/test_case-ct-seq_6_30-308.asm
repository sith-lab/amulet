.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDI, AL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RSI] 
DEC BX 
IMUL DL 
ADD DIL, 3 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RDI] 
DEC ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RDI 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RCX] 
NEG DL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
SUB ESI, 82 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDX] 
ADD DIL, -105 # instrumentation
ADC EAX, -1424469894 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -67 
CWD  
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
MOVSX EAX, DX 
CMOVL BX, DI 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDI 
MOVSX RSI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
