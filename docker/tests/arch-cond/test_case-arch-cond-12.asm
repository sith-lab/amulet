.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], DI 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 48 
SETZ AL 
CMOVZ RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], CX 
CMOVNBE EDI, EBX 
JLE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, 71 # instrumentation
CMOVL RDI, RCX 
CMOVNL RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], AX 
ADD RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RAX] 
TEST RSI, -455131736 
NOT DL 
XOR DIL, BL 
AND EAX, -1091430628 
CMOVL RDI, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
AND AL, BL 
AND DL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], DX 
CMOVNZ RAX, RDI 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -48 
SUB CX, DX 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
CMOVNZ RCX, RDX 
JMP .bb_main.4 
.bb_main.4:
MOVSX DX, BL 
AND RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RSI] 
SUB SI, 112 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], -25 
JMP .bb_main.5 
.bb_main.5:
XOR EAX, -321591380 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DIL 
CMOVNO AX, AX 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
