.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RAX] 
MOVSX RDX, DIL 
SETNL DL 
CMOVNB AX, DI 
AND RSI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RSI], -90 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 101 
CMOVNP ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RCX] 
CMOVNO EBX, EBX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RSI] 
AND EAX, 566537163 
SETNS CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
SBB DI, AX 
OR AX, 24954 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
ADD RAX, -1049381965 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], SIL 
CMOVNLE EDX, EAX 
SETNL CL 
IMUL RAX, RBX 
SUB AL, 8 
AND RDX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI], -76 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], BX 
CMOVS CX, AX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 25 # instrumentation
SETNL BL 
SETNZ BL 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RSI] 
CWD  
ADD DL, 89 
IMUL RCX, RSI 
SBB AX, 8960 
IMUL EBX, EDI 
AND EAX, -185710759 
TEST RDI, 1746095832 
SETNO BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
