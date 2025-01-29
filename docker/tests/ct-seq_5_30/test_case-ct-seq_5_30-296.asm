.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -126 # instrumentation
ADC RAX, -1359781261 
AND RAX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -92 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
CMP RAX, -1486965659 
CMOVNL RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
MOVZX BX, BL 
ADD EDX, ESI 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -650491999 
AND RCX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RCX] 
CMOVO DX, AX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -78 # instrumentation
CMOVNS RDX, RBX 
CWD  
LAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
MOV BL, -39 
CMOVL RSI, RSI 
CMP EAX, -38 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 99 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -57 # instrumentation
ADC AL, -119 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RCX] 
ADD RAX, 1006812277 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
