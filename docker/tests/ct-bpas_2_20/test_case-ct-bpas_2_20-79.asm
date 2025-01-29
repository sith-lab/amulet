.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
IMUL AX, DI 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], BX 
CMOVNLE RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
ADD CL, -40 
XCHG AL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 45 
LAHF  
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -22 
AND RCX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EDI 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -121 
AND RCX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RCX] 
SUB SIL, 93 
AND RDX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
