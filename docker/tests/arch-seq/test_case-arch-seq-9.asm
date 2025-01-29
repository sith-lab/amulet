.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RCX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DIL 
SETBE BL 
CMOVP SI, BX 
AND EAX, 103699868 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
MOVZX AX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RAX] 
CMOVP AX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
LAHF  
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RSI 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
CMP EAX, -947178342 
CMOVNS EBX, EAX 
NOT BX 
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
CMP EAX, -75 
XADD DI, AX 
OR AL, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], 30 
AND RBX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 0 # instrumentation
CMOVZ RCX, RBX 
CMOVB EBX, EAX 
AND ECX, -79 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], CL 
MOVSX ECX, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], RCX 
OR DX, 80 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
NOT DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
