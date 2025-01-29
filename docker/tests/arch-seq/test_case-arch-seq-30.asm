.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BX, DX 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RCX] 
AND RAX, 1225112604 
SETNLE DL 
ADC AX, -7650 
IMUL RCX 
TEST AX, 17635 
SETB DL 
ADC AL, -70 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST ESI, 577181142 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDX] 
CMPXCHG RBX, RAX 
ADC RAX, 2062743029 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDX] 
ADD SIL, -47 # instrumentation
CMOVNZ RDX, RCX 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
DEC CL 
MUL EDX 
SETNB SIL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
NOT ECX 
SETS DL 
INC RAX 
NOT ECX 
SETZ DL 
AND EBX, EDI 
JMP .bb_main.4 
.bb_main.4:
INC RDI 
XCHG ECX, EAX 
SETZ DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 233608976 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], AL 
OR DL, 1 # instrumentation
CMP DIL, -1 
CMP DIL, 23 
TEST RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
