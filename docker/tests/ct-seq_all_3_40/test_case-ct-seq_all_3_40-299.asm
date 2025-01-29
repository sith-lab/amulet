.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
SETZ DL 
OR ECX, 13 
AND RDI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDI] 
IMUL DI, CX, 63 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
XOR ESI, ECX 
SBB DIL, 63 
TEST BL, BL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -102 
XCHG CL, AL 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -80 
OR RAX, -114 
ADD EAX, 450178686 
AND RSI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RSI], RDX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 99 
CMPXCHG ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 96 
CMOVNS RCX, RCX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 50 # instrumentation
MOV ESI, -358117581 
MOV RAX, RAX 
CMOVB EAX, EDI 
TEST AL, 16 
MOVZX RAX, DL 
SUB RBX, RCX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], -108 
MOV RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDX] 
NOP  
CMOVNLE RAX, RSI 
SETNS BL 
MOV AL, BL 
STD  
CMOVNLE RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RBX] 
CMP RBX, -6 
ADC RBX, RBX 
SETNL BL 
SETNO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
