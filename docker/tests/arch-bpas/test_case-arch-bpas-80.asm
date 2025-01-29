.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EDX, EAX 
SBB EAX, -1641566987 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
NOP  
CMOVB CX, SI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RSI] 
SUB EAX, -1510823813 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 45 # instrumentation
SETNBE SIL 
XOR DL, DL 
ADD RAX, -429962084 
ADD AL, -105 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], -47 
CMP AX, -8628 
CMPXCHG BX, CX 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XOR CL, CL 
MOVSX ESI, AL 
IMUL RDX 
ADD RAX, 1673321525 
SUB RDI, 50 
CMOVNZ RDI, RBX 
SUB RAX, 712962877 
CMOVNL ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 97 # instrumentation
ADC AX, -22125 
CMOVNS RCX, RDX 
SETNZ BL 
OR DL, AL 
CMP SIL, CL 
SETNL DL 
CMOVNB EDI, EAX 
ADC ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI] 
INC SI 
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 97 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
SETNB DL 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], ESI 
CMOVNBE ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], -16 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
