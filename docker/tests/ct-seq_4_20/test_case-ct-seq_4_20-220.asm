.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI], 62 
JMP .bb_main.1 
.bb_main.1:
CDQ  
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -66 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 40 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -1803446272 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], AX 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX], 43 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DIL 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 71 # instrumentation
CMOVNBE ECX, ESI 
CMP ESI, -63 
MUL DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
