.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL DI 
CMOVB RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
BSWAP EDI 
MOVZX RSI, DIL 
ADC RSI, -30 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -5 
CBW  
MOVZX RDX, CL 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], DI 
MOV CL, 8 
MOV SIL, 125 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -120 # instrumentation
ADC SIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], SIL 
IMUL RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI], -31 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
ADC DI, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
INC SIL 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], SI 
CMOVNB ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 32 
CMOVNZ EAX, EAX 
NEG DIL 
XCHG EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
