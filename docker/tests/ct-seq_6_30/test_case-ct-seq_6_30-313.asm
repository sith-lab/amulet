.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
CMOVO ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RDX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG DX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
SUB AL, -26 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 63 # instrumentation
CMOVB CX, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RSI] 
JO .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, 106 # instrumentation
SBB AX, -127 
CMP ECX, -128 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], CX 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], SI 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RAX] 
CMOVZ EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RCX], -83 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
STD  
SUB RAX, 98 
IMUL RBX, RDI, 56 
SBB EAX, 132889649 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -10 
AND RAX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
