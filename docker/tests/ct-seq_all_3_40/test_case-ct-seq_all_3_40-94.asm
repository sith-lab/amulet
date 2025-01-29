.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -2 # instrumentation
SETNZ AL 
AND RDX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RDX] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], 94 
CMOVBE EDI, EBX 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
STC  
MOV ECX, EAX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RAX] 
ADC RSI, RDI 
TEST EAX, 438389341 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], CL 
LAHF  
SETBE DIL 
CMOVNL BX, BX 
SUB EAX, 913884872 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
CWD  
CMOVB SI, SI 
CMOVP ECX, EDI 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], -58 
SETNP SIL 
XOR RBX, 3 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CMOVNBE CX, AX 
ADD DIL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RAX] 
CMOVNZ SI, BX 
MOV EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], AX 
ADC AL, 56 
IMUL EDX 
CMP AX, 28373 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
IMUL DL 
DEC BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
