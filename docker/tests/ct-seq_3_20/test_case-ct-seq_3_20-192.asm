.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
CMOVNLE DX, CX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -74 
INC SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 70 
AND RAX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1979149279 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
