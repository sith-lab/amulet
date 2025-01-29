.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -66 
IMUL RCX 
NEG RCX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDI] 
XCHG AX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
ADC SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 1035118367 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RBX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
CMP DL, -96 
CMP DL, CL 
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EAX 
MOVSX ESI, SI 
MOV DX, -27806 
SBB CX, 79 
XCHG RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -61 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ESI 
CMP AX, 24666 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 54 
AND RBX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RBX] 
XCHG EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
