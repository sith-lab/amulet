.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 83 # instrumentation
CMOVBE DI, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], -33 
IMUL RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
MOV EBX, 1289754865 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RSI 
XOR ECX, ESI 
SETB BL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
ADD SIL, 60 # instrumentation
NOT DIL 
CMOVB ESI, EAX 
IMUL RBX, RAX, 0 
ADD DIL, -116 # instrumentation
CMOVNLE RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], -116 
CMOVNS EAX, EBX 
AND AL, 107 
CMOVBE RDX, RAX 
CMP SIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], 117 
LEA EAX, qword ptr [RAX + RSI + 47760] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -82 # instrumentation
ADC RSI, 114 
ADD RAX, 2061383066 
CMOVNLE RBX, RDX 
CMOVL BX, DI 
MOV BL, 110 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], DL 
ADC SIL, 108 
CMOVNO RCX, RDI 
ADD RSI, RDX 
MOVSX ECX, BX 
XOR RAX, -520198827 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
MOVZX RDX, BX 
LEA SI, qword ptr [RCX + RAX] 
NEG RDI 
STD  
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
