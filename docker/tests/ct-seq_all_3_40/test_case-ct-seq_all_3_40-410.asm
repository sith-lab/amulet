.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -52 # instrumentation
CDQ  
CMOVNZ CX, CX 
OR EAX, -1526246202 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RCX 
MOVSX EDX, BX 
CMOVNZ DX, SI 
XOR EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], 38 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], -117 
ADC DI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX], -22 
MOVZX RAX, BX 
ADC EAX, 382713208 
ADC EDX, 68 
MOVZX EDX, DI 
CLD  
SBB RDI, -95 
MOVSX EBX, DL 
ADC DL, 68 
SBB SIL, 7 
CMOVO ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
CMOVZ EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
OR AX, -9926 
CMP RCX, RBX 
ADD AX, -25220 
CMOVBE EAX, ESI 
IMUL BL 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 17 
IMUL EDI 
AND AL, 37 
SETNO DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
