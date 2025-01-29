.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EBX 
CMOVNP EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 28 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG AL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 85 # instrumentation
ADC RAX, -1971881957 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -108 
JMP .bb_main.3 
.bb_main.3:
MOV AX, -14583 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], SIL 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 83 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
