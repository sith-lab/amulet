.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
XCHG BL, AL 
LEA EDI, qword ptr [RCX + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RCX] 
CMOVLE EBX, EDI 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
SUB AL, BL 
AND RSI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RSI] 
INC EAX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EBX 
JMP .bb_main.1 
.bb_main.1:
XCHG ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
ADD AL, 78 
AND RDX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDX] 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -114 
SBB AX, DI 
SBB RDX, RAX 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -112 
CMOVNLE RDI, RCX 
CMP EAX, -42 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -111 
CMP DX, -59 
ADD RAX, 839493305 
CMOVP RCX, RSI 
ADD EAX, -1312582889 
SUB DI, SI 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -37 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
