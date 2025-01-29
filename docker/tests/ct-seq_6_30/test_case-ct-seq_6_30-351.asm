.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 85 
CMOVP RDI, RAX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL CL 
SUB AL, -107 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
IMUL EAX, EAX 
ADD DIL, 8 # instrumentation
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 0 # instrumentation
CMOVNB RSI, RDI 
SBB AX, 44 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
MUL DI 
ADD DIL, 1 # instrumentation
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG CL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RAX] 
ADC DL, CL 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EBX 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
IMUL RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
CMOVO RDX, RCX 
IMUL RDI 
MUL CL 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -43 
SBB AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
