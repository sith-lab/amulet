.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 117 
TEST DI, -26934 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI] 
TEST AL, -94 
CMP DL, CL 
OR DL, 47 
SBB RDX, -43 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RSI] 
CMPXCHG RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], SIL 
NOT AL 
SETNB SIL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RCX 
SETNLE DL 
CMP BL, -37 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
CMOVLE BX, DX 
ADD RDI, 24 
MOV BL, CL 
XOR EDX, -21 
XCHG RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
MOVZX BX, CL 
ADD RAX, 1357528124 
CMOVNLE RAX, RCX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], 119 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -21 
TEST DL, DL 
XOR DL, CL 
SETNB CL 
ADD RAX, -34831887 
SUB RCX, 76 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
SBB AX, -24070 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RSI 
AND CL, BL 
SUB RAX, -2001659030 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
