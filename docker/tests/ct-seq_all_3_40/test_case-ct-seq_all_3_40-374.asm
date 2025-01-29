.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -42 # instrumentation
CMOVNLE DX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RSI] 
XOR AL, 10 
MOVZX EAX, DL 
SETLE DL 
ADD RAX, RDI 
XCHG AL, CL 
SETL AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
SETZ BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -88 
MOV RCX, -7456896132305771115 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
NOT CL 
ADC RCX, RDI 
AND RAX, -659967883 
XADD AX, DI 
AND RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDX] 
SETNL CL 
CMOVS EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], -54 
XOR EAX, EDX 
SUB ECX, -16 
JMP .bb_main.2 
.bb_main.2:
SUB AX, 29655 
NEG EDI 
OR DL, 41 
CMOVNB AX, CX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -1 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RBX] 
SBB BX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RSI] 
ADC RAX, 60 
NEG RAX 
SUB AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
