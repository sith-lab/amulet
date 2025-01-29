.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP BX, DX 
SUB SIL, DL 
ADC AL, 57 
CMP RCX, -89 
AND RDX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RDX] 
ADC CX, DX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 44 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
CMP AL, AL 
CMOVP RDI, RDX 
CMP EAX, 1743803753 
CMOVLE AX, AX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -14 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -56 # instrumentation
CMOVP RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
CMOVS RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -85 
SBB RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 564780256 
CMOVZ EDX, EDX 
CMOVO AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
