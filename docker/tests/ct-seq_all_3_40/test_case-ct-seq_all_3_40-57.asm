.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 87 # instrumentation
CMOVBE RDX, RDX 
SETS AL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 21 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
ADD CL, -62 
ADD RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -92 
SBB EBX, 81 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RBX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP AL, DL 
SETNLE CL 
CMOVNB AX, DI 
AND AX, 26226 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], -25 
SUB RDX, -111 
MOVSX RAX, CL 
AND RSI, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RSI] 
CMP AL, AL 
AND RDI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDI] 
ADC RAX, -1494618885 
SETB BL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 68 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
MOVSX ECX, AL 
ADC CL, -113 
CMOVNL RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 99 
XOR DL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 2 
CMOVS CX, SI 
ADD EAX, -1859763806 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1103897849 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
