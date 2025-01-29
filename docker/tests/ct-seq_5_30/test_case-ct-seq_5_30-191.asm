.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 39 
CMP CL, CL 
XCHG BX, AX 
SBB RAX, -219003398 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RSI] 
SBB DL, CL 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
INC SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
CMOVS EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -15 
CMOVBE DX, DI 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -61 # instrumentation
CMOVNLE AX, CX 
SBB BL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RSI] 
NEG DI 
DEC DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
CMP ESI, EAX 
SBB EAX, -533440389 
CMOVLE RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 52 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 102 # instrumentation
CMOVO DX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RAX] 
CMOVZ EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
