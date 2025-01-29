.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
CLD  
XCHG BL, BL 
XCHG DIL, DIL 
CMP AL, 30 
ADC AX, 23340 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 64 
CMP BL, 48 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 104 
ADD RAX, -727003035 
MOVZX ESI, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RSI] 
INC AL 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
MOVZX ESI, AL 
CMP ESI, EDX 
JMP .bb_main.3 
.bb_main.3:
SUB CL, SIL 
CMOVNL RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], BX 
ADC EBX, 22 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 31 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -47 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
ADD SIL, -84 # instrumentation
CMOVO SI, BX 
MOVSX SI, BL 
NEG CX 
MOVSX BX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
