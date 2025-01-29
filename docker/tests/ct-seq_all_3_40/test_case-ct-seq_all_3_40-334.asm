.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDI, -1841898367 
SUB BL, 22 
XCHG SIL, BL 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RDI 
INC EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RBX] 
NEG AX 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
MUL RSI 
ADD AL, DIL 
SUB AX, 947 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
MUL CL 
CMP AX, -5257 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 10 
MOVSX EBX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
MOVZX EAX, AL 
INC RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -111 
LEA RCX, qword ptr [RDI + RDI] 
CMOVNL EAX, EAX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
CMOVP EDI, EAX 
CMOVLE RCX, RDX 
SETS DL 
ADC SIL, -16 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
MOVZX SI, BL 
CMP RBX, 70 
ADC RBX, -54 
CMOVLE EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
