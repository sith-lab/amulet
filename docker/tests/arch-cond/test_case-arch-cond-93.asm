.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 87 # instrumentation
ADC CX, 110 
CBW  
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -29 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RSI] 
CMOVZ RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], AL 
OR EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
ADC ESI, EAX 
CMOVNB BX, DX 
LOOP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -62 
SBB ESI, EBX 
CMOVNS RDI, RBX 
SETNL DIL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -91 # instrumentation
ADC RAX, -1622495296 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RBX] 
TEST RAX, -1351336307 
CMPXCHG BL, AL 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
ADD RAX, RBX 
CMP DIL, -126 
AND RCX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RCX] 
DEC CX 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX], 12 
SETNB DL 
AND AX, AX 
CMOVNP EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RDI 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], BX 
JMP .bb_main.4 
.bb_main.4:
XADD EAX, ESI 
SUB SIL, 114 
CMP AL, -114 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RDI] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
