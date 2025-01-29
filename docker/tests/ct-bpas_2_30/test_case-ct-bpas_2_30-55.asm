.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -103 # instrumentation
CMOVNS ESI, EBX 
CMOVNS RBX, RBX 
DEC ESI 
ADD EAX, 1593250830 
ADC SIL, 111 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -3 
MOVSX RDI, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDX] 
SUB SI, -121 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
CLC  
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
CMOVNBE RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -62 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX], 29 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDX 
CMOVNB DI, DI 
CMOVNLE EDI, EAX 
ADC EDI, 1 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
CMOVNL RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
CMOVO DX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
MUL EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
