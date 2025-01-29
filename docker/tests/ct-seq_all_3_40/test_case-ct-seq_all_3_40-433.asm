.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 49 # instrumentation
ADC AL, -44 
AND RDI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EDX 
SETBE SIL 
CMOVO ESI, EDI 
OR AL, CL 
AND RAX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RAX] 
CMP AX, 5376 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RCX 
SETNBE AL 
CMOVNBE RSI, RBX 
XOR CX, -28 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RBX 
SETNS BL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV RDI, -881436551768907913 
AND AL, 112 
OR EDX, 1 # instrumentation
CMOVL EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EBX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -34 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
SETL CL 
CMP EAX, -67 
ADD RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RBX] 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR EAX, EDI 
SAHF  
ADD CL, 8 
SETNS AL 
CMOVBE RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX] 
ADD SIL, -93 # instrumentation
SETLE AL 
XCHG EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -113 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], CL 
ADC RDI, 43 
CMOVNP RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
