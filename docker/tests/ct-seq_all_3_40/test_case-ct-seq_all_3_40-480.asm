.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, -346153337 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], CL 
CMOVBE RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], CX 
OR EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EDX 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
OR CX, AX 
IMUL RSI 
AND ESI, 105 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
SUB AX, -17885 
MOV CL, 68 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -15595 
CMP SI, CX 
AND RAX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RAX] 
OR DI, 102 
AND RCX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
XOR CL, DL 
CMOVS RAX, RAX 
MOVSX ECX, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], 41 
ADD EAX, 196612936 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD DIL, 9 # instrumentation
SETP BL 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDX 
XOR DIL, 38 
DEC RCX 
SETS DIL 
AND RAX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RAX] 
ADC RSI, -56 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RSI], SI 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
