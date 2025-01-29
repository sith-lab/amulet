.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 73 
STC  
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDI 
CMOVLE DI, DX 
SETB SIL 
AND RDX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], CL 
NOT RDX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RCX] 
DEC RBX 
JMP .bb_main.1 
.bb_main.1:
SUB SI, 102 
NOT AL 
ADC AL, -23 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDI] 
CMOVNLE EDI, ECX 
AND CX, 26 
MUL EAX 
ADD RDI, 80 
CMP AX, -11 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], CX 
AND DX, 127 
OR RAX, -760775987 
SUB CX, DI 
SETNBE CL 
SETP SIL 
DEC DL 
CMOVNLE AX, CX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 5 
AND RSI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RSI] 
SETLE DL 
CMP DIL, 123 
XCHG DI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
CMOVLE RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
