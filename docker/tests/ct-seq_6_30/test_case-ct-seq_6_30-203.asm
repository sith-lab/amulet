.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
SBB AL, 7 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
XCHG DL, DL 
SUB DIL, 113 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -69 
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
XCHG RDI, RSI 
CMOVNZ CX, BX 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
XCHG DL, BL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DX 
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI], 11 
MOVZX CX, CL 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
CMOVP EAX, EBX 
MOV AX, CX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], BX 
JNB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 74 
JMP .bb_main.4 
.bb_main.4:
MOVSX EDX, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDI] 
MOVZX RSI, DIL 
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB AX, DI 
CMOVNS EAX, EDX 
MOVZX SI, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], SIL 
AND RCX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
