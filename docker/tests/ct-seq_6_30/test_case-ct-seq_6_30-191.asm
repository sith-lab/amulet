.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DL 
CMOVNBE RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RSI] 
ADD EAX, 902239857 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], -55 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ESI 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RBX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RBX] 
SUB EAX, -1569500117 
AND RBX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RBX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RCX] 
XCHG ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
MOVZX EDX, CL 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
MOVZX DX, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
CMP AX, 21241 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
SBB AL, 28 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
NEG EAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
