.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
CMOVNL EAX, ESI 
CMP SI, -93 
SBB SIL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -35 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 45 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
IMUL AX 
AND RCX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
ADD DIL, 38 # instrumentation
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP EBX, 53 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
CMOVNBE ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
CLC  
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDI] 
SBB EAX, -2144361665 
XCHG DI, CX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
CMOVBE RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 68 # instrumentation
CMOVNL AX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 85 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MUL EDI 
IMUL EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
