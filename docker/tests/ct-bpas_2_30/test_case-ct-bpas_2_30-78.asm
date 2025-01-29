.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 105 # instrumentation
SBB RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDI] 
IMUL BX, DX 
CLD  
XCHG BL, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RBX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RCX] 
CLD  
AND RDX, 0b1111111111111 # instrumentation
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
IMUL EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -26 
CMOVNL RDX, RSI 
MOV DIL, -40 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -101 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDI] 
CMOVNO EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -30 
MOVZX DX, SIL 
ADD RCX, -46 
ADC EBX, EAX 
ADD AL, DL 
CWDE  
SBB BX, 36 
AND RDI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
