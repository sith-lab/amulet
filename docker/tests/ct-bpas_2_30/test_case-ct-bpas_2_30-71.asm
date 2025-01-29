.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -48 # instrumentation
ADC DL, 3 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
CLD  
SUB RAX, 1290082410 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RCX 
ADC AL, 104 
ADC ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
INC DI 
CMOVO CX, CX 
CMOVNS RDX, RBX 
NEG SIL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RBX] 
ADD AL, -3 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 21073 
MOVSX CX, AL 
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG AL, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -14 
ADC DL, CL 
CMOVB ECX, ECX 
ADC CX, DX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
BSWAP RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
