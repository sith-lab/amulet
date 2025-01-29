.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC DX 
AND RDX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDX] 
DEC EBX 
SAHF  
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -120 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], AL 
SETP SIL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -121 
SUB RAX, -474055654 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
LOOPNE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 120 # instrumentation
SETZ CL 
AND RBX, 125 
XCHG RCX, RCX 
CMOVB RAX, RSI 
AND SIL, 10 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 82 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], 4 
IMUL RSI 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -14 
TEST DI, -17336 
TEST AL, -23 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
XOR ESI, 36 
IMUL RSI, RDI, -119 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ESI 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -97 # instrumentation
CMOVL EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RBX] 
SETS DIL 
AND RSI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RSI] 
CMOVNLE RDX, RCX 
XADD DL, SIL 
ADD RDX, RCX 
TEST AX, -29611 
TEST RDX, -1904487282 
ADC AX, -28898 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
