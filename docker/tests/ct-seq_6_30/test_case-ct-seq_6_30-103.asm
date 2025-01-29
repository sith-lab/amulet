.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EDX 
MOVZX AX, DL 
SUB DIL, -96 
CMOVO ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
JL .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
MOVZX RDX, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -7 
CMOVNP EDI, ESI 
CMOVNZ RSI, RDX 
LOOPNE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 25 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RCX], -62 
INC DI 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -99 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
CMOVLE DI, BX 
SUB AX, -9304 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RBX 
CMOVB RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
CMOVL AX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RCX] 
CMOVLE RAX, RCX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
