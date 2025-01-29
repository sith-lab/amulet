.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
MOVZX RDI, AL 
LEA DI, qword ptr [RCX + RDI] 
XOR EBX, ECX 
CMOVBE RSI, RDI 
NEG RDX 
TEST AX, -11179 
MOVSX EDX, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
MOV DL, -27 
CMP EAX, -25 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RBX] 
IMUL ESI 
LEA RCX, qword ptr [RSI] 
XOR EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
CMOVP RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RDI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 51 # instrumentation
SETL BL 
TEST RAX, -1022244970 
CMOVP RSI, RSI 
CLC  
ADC EAX, 34059933 
SETL DL 
INC CX 
NEG DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RSI] 
OR EDI, -11 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], 17 
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -120 
CMPXCHG RCX, RBX 
SETNB SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
ADD SI, SI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
