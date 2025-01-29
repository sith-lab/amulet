.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD CX, CX 
DEC EAX 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
ADD CL, BL 
CMOVNO RSI, RAX 
MOVZX RDI, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], 83 
AND EBX, 6 
AND RSI, 0b1111111111111 # instrumentation
ADD AX, -19730 
ADD EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDX] 
CMOVBE EDI, ESI 
CBW  
TEST CX, -23893 
SETLE SIL 
AND RCX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RCX] 
SETO DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP AX, -25698 
MOVSX EBX, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 5 
SUB ECX, -42 
SETBE SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], SI 
CMOVL ESI, EDX 
CMOVNZ ESI, ESI 
CMPXCHG ESI, EDI 
ADC SI, 38 
SETLE DIL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
NOT AL 
MOV CX, -23697 
AND RCX, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RCX] 
SETO DL 
DEC DI 
ADC EDI, 120 
AND RDX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
