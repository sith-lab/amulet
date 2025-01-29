.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DL, -15 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RSI] 
SUB DI, CX 
IMUL DX 
TEST ECX, -1112592440 
SETNLE DIL 
INC DIL 
MOVSX EDX, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
OR BL, -63 
SETNLE BL 
ADD AL, DL 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD RAX, -1567452207 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
INC BL 
ADC EDX, -108 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 47 # instrumentation
MOV CL, AL 
NOT EDX 
SETNS SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  # instrumentation
ADD SIL, -72 # instrumentation
SETNLE DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
SBB DL, AL 
SUB BX, DX 
SUB RAX, 593555318 
SBB EAX, EBX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -24 # instrumentation
CMOVNLE ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RBX] 
SBB RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -19 
SETBE DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], -102 
CMPXCHG RDX, RCX 
SETO AL 
TEST EDX, -2069869925 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
