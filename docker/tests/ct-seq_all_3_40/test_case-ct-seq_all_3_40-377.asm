.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RSI] 
IMUL CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RBX 
MUL AX 
XOR SIL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RCX] 
ADC AL, -55 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 38 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 115 
ADC RAX, 1707490549 
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], 94 
MOV EAX, 1103969462 
CMOVNL DI, BX 
MOV RDX, -8834746004559467058 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -111 # instrumentation
SBB EDI, EAX 
SETLE DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], -27 
AND RCX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RCX] 
IMUL ESI 
MOV ESI, EAX 
XOR EAX, 1698254395 
OR AX, SI 
SETB AL 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
SUB BL, CL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
XOR DIL, BL 
SUB CL, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -1342972444 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RDX 
AND CL, BL 
ADD RAX, 1313519679 
MUL CL 
TEST DIL, -120 
IMUL EBX, ESI, 101 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -16 
MOVZX CX, AL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
