.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RBX] 
AND EAX, 1138287991 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], 26 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RSI] 
XADD SI, AX 
XOR EBX, -103 
ADC CL, 66 
SBB BX, DX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RAX, -296294652 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
CMOVO RAX, RSI 
OR AL, 51 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX] 
AND EAX, 21 
XOR CL, -100 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
SUB EAX, ECX 
IMUL EDX, EDX, 6 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -74 
SBB DIL, -121 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX], -48 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
ADD AX, -28355 
SBB DL, 114 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 27 
CMOVNLE EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RBX] 
CMOVP EDX, EBX 
CMOVNS EDX, EDX 
CMOVLE RBX, RAX 
TEST DI, AX 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
