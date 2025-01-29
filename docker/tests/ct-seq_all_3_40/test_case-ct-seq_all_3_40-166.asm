.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG BX 
CMOVS EDX, EAX 
SETZ CL 
XOR EAX, -24 
SETL CL 
SETNP CL 
OR AL, AL 
TEST BL, DL 
MOVZX RDX, CX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD EAX, -1416820687 
XOR AL, -89 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
CMP SIL, -117 
MOVZX RCX, SIL 
ADC RAX, 1189665996 
ADD AL, -34 
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
CMP DX, -120 
AND RDX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RBX] 
CMPXCHG AL, SIL 
CMP AL, 62 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
ADD RCX, -48 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDX 
SETNZ BL 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
CMP RAX, -425322779 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -47 
IMUL DX, CX, 22 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 99 
OR SI, 0b1000000000000000 # instrumentation
BSF AX, SI 
TEST AL, -38 
AND RDX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
SETNBE AL 
SBB AX, -83 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
