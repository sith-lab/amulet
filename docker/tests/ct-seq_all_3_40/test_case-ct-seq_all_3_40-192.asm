.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG ESI 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], ECX 
SETNO BL 
CMOVNL BX, CX 
XOR AL, -41 
OR DX, 1 # instrumentation
SUB RAX, -46029482 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
CMP DIL, -118 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 80 
TEST CL, -98 
XOR RBX, 17 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], ECX 
OR RDI, 6 
CMOVO RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RBX] 
ADD CX, 90 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], BX 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], DX 
CMOVNS RDI, RBX 
MOVZX CX, BL 
XOR RAX, -1104434300 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RSI 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
OR ECX, ECX 
CMC  
CMOVNS DI, SI 
AND RSI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
TEST RBX, RCX 
ADD SIL, 115 # instrumentation
LAHF  
CMOVBE DI, CX 
AND RAX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RAX] 
XCHG RDI, RAX 
CMOVNL AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
