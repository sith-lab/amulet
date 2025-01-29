.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 29 # instrumentation
CMOVNZ ECX, ESI 
CMPXCHG SI, CX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 1697113949 
AND RDX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RDX] 
CMOVNB RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], BX 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
AND BL, SIL 
CMOVNO EDI, ECX 
DEC SIL 
SETS AL 
ADD EDX, 87 
JMP .bb_main.2 
.bb_main.2:
TEST DI, 14726 
DEC RDX 
INC ECX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
CMOVNLE RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RCX] 
SETNB AL 
OR DL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 81 
TEST AX, SI 
SETNL DL 
OR DL, 1 # instrumentation
TEST AX, 7230 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RSI] 
MOVSX ECX, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RSI], RDI 
AND RSI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RBX] 
ADC AL, 34 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
