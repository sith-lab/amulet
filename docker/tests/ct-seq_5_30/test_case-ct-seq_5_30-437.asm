.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DX 
CMP AX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
ADD ECX, -67 
ADD DIL, -109 
SBB AL, -87 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 53 # instrumentation
CMOVNL CX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
CMOVS SI, DX 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 57 
CWDE  
MOVZX EDI, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RAX] 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
IMUL RDX, RDI, -77 
AND RDX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDX] 
CMOVNBE EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
INC DI 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
ADD SIL, 66 # instrumentation
CMOVNS EDX, EBX 
CMOVLE BX, BX 
LAHF  
IMUL DX 
MOVZX RDI, SI 
ADC ESI, -5 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
