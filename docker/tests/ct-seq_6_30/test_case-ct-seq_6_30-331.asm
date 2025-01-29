.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -44 # instrumentation
CMOVNL ECX, EBX 
ADC CX, DI 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CLD  
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -97 
XCHG AL, CL 
MOV EDX, -970094985 
ADC EAX, -8 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CWDE  
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -120 
NEG AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RBX] 
BSWAP RDI 
JO .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD EAX, -2069749114 
AND RAX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RAX] 
CMOVNLE DX, BX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -102 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], SI 
JNO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RSI] 
SBB EBX, -15 
MOVSX EDX, BL 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
CMOVLE EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EAX 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -110 
MOVZX EBX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
