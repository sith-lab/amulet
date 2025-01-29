.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -80 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 558255254 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDI] 
CMOVNZ CX, AX 
MOV BX, 18464 
SBB SI, 80 
ADC EDX, ESI 
NEG EAX 
CMP DL, CL 
SUB AL, 90 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -112 
SUB RAX, 1258525517 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 49 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -16 
CMOVNL SI, CX 
XCHG ESI, EAX 
SUB DL, -18 
SBB BL, -100 
CLD  
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
