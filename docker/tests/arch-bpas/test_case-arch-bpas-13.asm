.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV ECX, -1420151463 
OR AX, -31344 
SETNBE CL 
AND RDX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RDX] 
XOR SI, -9 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
CMOVL BX, DI 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 67 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
IMUL ECX, EDX, 53 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RCX] 
CMOVNZ ECX, EAX 
OR SIL, 121 
OR DX, 0b1000000000000000 # instrumentation
BSR DI, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], CX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EDX 
SETNB BL 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -41 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], CL 
CMP SIL, -39 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RSI 
XOR AL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RSI] 
SUB AL, -66 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RDI 
CMOVS RSI, RBX 
SBB BL, -97 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
ADC EDX, EAX 
MOVSX EDI, DL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
ADD RBX, RCX 
XOR AL, -36 
CMOVNL DI, DI 
NOT BL 
ADC AL, -61 
SETO BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
