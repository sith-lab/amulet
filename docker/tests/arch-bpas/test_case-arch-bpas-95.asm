.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -11 
SETNLE BL 
CMOVBE RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], 99 
INC EAX 
CMPXCHG EAX, EAX 
CMOVNO ECX, EDX 
SETBE CL 
AND RBX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RBX] 
ADD RBX, 100 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RSI 
TEST BL, CL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RAX] 
XOR AL, 6 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDX] 
NOT AL 
ADD RSI, 34 
AND RDI, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], AL 
XCHG BX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RSI] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 12 
XCHG AL, CL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ECX 
OR CL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RSI, 125 
XOR CX, -52 
CMOVNP SI, BX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DI 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EBX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RAX] 
CMOVB ESI, ECX 
XOR RDI, 31 
XOR DL, 127 
CMOVO RSI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
