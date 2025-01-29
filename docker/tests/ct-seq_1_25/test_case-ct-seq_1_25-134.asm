.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 99 
SBB AL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDX 
CMOVNLE EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], ESI 
INC BX 
XCHG DL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RCX] 
MOVZX EDX, DL 
CMOVNL RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DI 
ADD CX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -11 
MOV AL, 100 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RBX] 
MOVSX EDX, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
