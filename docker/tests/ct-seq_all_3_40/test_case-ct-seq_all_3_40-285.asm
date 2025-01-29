.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -112 
MOVSX EBX, AL 
CMOVNL SI, DI 
XOR DL, DL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RDI 
TEST DL, -116 
TEST EAX, -1664149451 
ADD AX, 27727 
MOV AL, AL 
CMP EAX, -1829081039 
IMUL CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DIL 
TEST AL, 96 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 12 
CMOVNBE RBX, RSI 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
ADC SIL, AL 
ADC RAX, 995642378 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 107 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], AX 
CMOVB EDX, ESI 
SETBE DL 
JMP .bb_main.2 
.bb_main.2:
IMUL RCX, RCX, 58 
CDQ  
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
SETL AL 
CWD  
TEST RSI, -919007439 
CMOVNB CX, CX 
CMP CL, -11 
ADC RCX, RDI 
MOVZX RBX, SIL 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX], -57 
SUB RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RSI 
CMP RCX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
