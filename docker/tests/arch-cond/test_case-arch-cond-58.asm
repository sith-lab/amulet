.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RSI], RDX 
CMOVBE AX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
CMPXCHG ESI, ECX 
AND RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RBX] 
CMOVS SI, DX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], CX 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX DI, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RAX 
OR CX, 0b1000000000000000 # instrumentation
BSR DX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -58 
CMP RCX, 90 
AND RDX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
OR EDI, 1 
SETNP CL 
SBB EBX, -118 
SETL BL 
SUB EAX, EAX 
ADC CL, 94 
SETNL DIL 
XCHG RDI, RAX 
CMP RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 2 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EAX 
SUB DIL, 93 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
MOV BL, -95 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RBX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
ADD AX, 5593 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
