.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, RBX 
AND CX, DI 
LEA RDI, qword ptr [RBX] 
CMP BX, 3 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
NEG CX 
TEST EAX, -1514788538 
SBB RAX, -93 
SBB AX, 14243 
SBB AX, -26618 
ADD AL, 102 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDI] 
ADC AX, CX 
SETNZ DL 
CMP EAX, 117 
ADC ECX, -4 
ADD AL, 116 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RAX] 
ADC EAX, EDI 
TEST CL, AL 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RCX] 
SETZ CL 
CMP EAX, 1794985924 
AND RSI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CWD  
MOV DIL, -125 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
CMC  
CMOVNLE ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RAX] 
NOT RBX 
XOR AL, -17 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RBX 
LEA RAX, qword ptr [RSI + RAX] 
IMUL BX 
AND RAX, -330981626 
AND RDX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
