.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RDI, RAX 
DEC DIL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RSI 
ADC EAX, 301186528 
ADC CX, SI 
MOV SI, CX 
MOVZX SI, CL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 119 # instrumentation
ADC RDX, 110 
CMOVS ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -20 
SETNS AL 
IMUL DX, DI 
ADD SIL, 10 # instrumentation
SETS BL 
SUB AL, -109 
SETNS BL 
SETO AL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -93 
TEST SIL, -51 
AND EAX, 422841552 
SUB ECX, -116 
CMOVL RDX, RDI 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 40 # instrumentation
SETL BL 
AND RBX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RBX] 
TEST ECX, 224018048 
MOVSX CX, AL 
CMOVB EDI, EDX 
TEST AX, 30479 
MOV CL, -1 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RCX] 
IMUL RBX 
CMOVNB ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RBX] 
XADD ECX, EAX 
BSWAP ESI 
CMOVNP EDX, EBX 
DEC EAX 
XOR RCX, 25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
