.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
DEC BL 
ADD RAX, 229425659 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
CMOVNBE DX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
CMOVBE EDX, EDI 
DEC RAX 
SBB SIL, -108 
JS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, 89 # instrumentation
CMOVNLE AX, SI 
ADD DL, BL 
MOVZX CX, BL 
SUB EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -118 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX], -108 
ADD SIL, 81 # instrumentation
CMOVP EBX, EBX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -33 # instrumentation
CMOVNBE RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
MOV AL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RSI] 
CMOVP CX, SI 
CMOVL CX, CX 
JNS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -65 # instrumentation
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 76 # instrumentation
ADC RDI, -80 
CMOVNBE RCX, RDI 
MOV AL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
