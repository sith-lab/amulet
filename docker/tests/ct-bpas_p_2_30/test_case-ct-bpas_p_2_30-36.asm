.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 26 # instrumentation
ADC EAX, -33 
IMUL RDI 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -53 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 111 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
INC DL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EAX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RSI 
ADD DIL, 42 # instrumentation
CMOVP AX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DIL 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
CMP EAX, 2104884942 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -61 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -91 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -113 # instrumentation
CMOVNS AX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
ADD BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 18 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
NEG BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -25 
CMOVLE ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
CMP DIL, -46 
CBW  
ADC EDI, -53 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
