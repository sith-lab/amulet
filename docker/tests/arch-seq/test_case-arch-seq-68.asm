.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RAX] 
ADD EDI, ESI 
CMOVBE EDX, EAX 
ADC AL, 43 
AND RBX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RBX] 
SBB RAX, 1459815019 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 7 # instrumentation
SETP DL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RBX 
ADD SIL, -77 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RDI 
MOV ESI, 1936946226 
CMOVNP EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -43 
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
DEC ESI 
SUB AL, -110 
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
CMPXCHG DI, AX 
CMOVNBE AX, SI 
MOVZX BX, BL 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
ADD CL, 35 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], DI 
SETNLE DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
SBB AX, -1047 
CWDE  
MOVSX EBX, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RCX] 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
SUB EAX, 755542044 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
SBB RAX, 1687717842 
AND RCX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RCX] 
ADD BX, -77 
AND RSI, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
