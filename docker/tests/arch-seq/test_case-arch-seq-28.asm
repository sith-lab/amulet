.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
LEA RDX, qword ptr [RDI + RCX] 
TEST SI, SI 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RDX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
NEG RAX 
CMOVNS ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
OR AX, 9961 
AND RDI, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RDI] 
MOVZX DX, AL 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RDI 
AND RBX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RCX] 
INC DL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDX] 
XOR DL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
DEC AX 
CMOVO ESI, EDX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], DX 
CMOVO BX, CX 
CMOVNL RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], -101 
SETNZ CL 
JMP .bb_main.4 
.bb_main.4:
OR CL, AL 
SBB RBX, RDX 
CMOVNL CX, SI 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDX] 
NOP  
CMOVB DX, SI 
MOVZX RDI, AL 
AND RAX, 265902018 
NOT RSI 
AND RCX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
TEST EAX, -1549549316 
SUB EAX, 1207605433 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
