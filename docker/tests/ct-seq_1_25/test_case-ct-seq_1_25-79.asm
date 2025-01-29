.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ESI, DL 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], -108 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RAX] 
INC CL 
CMOVNZ ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDI] 
ADC AL, -23 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
MOV CL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RBX] 
MUL RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDI] 
ADC AX, -12901 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DIL 
SUB CX, 77 
CMOVNB ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RAX] 
SUB SIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RAX] 
CMOVP RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
