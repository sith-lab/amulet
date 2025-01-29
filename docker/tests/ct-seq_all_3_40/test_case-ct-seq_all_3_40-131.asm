.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EBX, -66 
MOV CL, 8 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
IMUL DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDI] 
ADD DIL, -53 # instrumentation
SETNP DL 
MUL DL 
MOV EAX, ECX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 11 # instrumentation
SBB SI, -83 
XOR EDI, ESI 
IMUL EDX, EDI, 65 
OR DL, 48 
XOR EBX, 39 
CMOVLE RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], ECX 
MOV EBX, -1174046294 
OR SI, 37 
ADC AX, 21089 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], AL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], EDI 
OR AX, 109 
CMOVNL EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
SETNS DL 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], DL 
CMOVNLE EDI, EBX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -39 
TEST AX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 85 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 66 
SETNO DL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RCX] 
MUL SI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
