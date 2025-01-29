.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -76 # instrumentation
CMOVO RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -40 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -101 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
ADD RAX, -115 
CMOVO RBX, RAX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -16 # instrumentation
SBB CL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
MOVZX EAX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -2 # instrumentation
CMOVNO RCX, RAX 
INC DL 
CMOVLE CX, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 57 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD AX, -142 
SUB DL, 60 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RSI] 
LEA RAX, qword ptr [RBX + RSI + 52195] 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
MOVZX EDX, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DL 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -116 
ADC RCX, 86 
NEG DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
