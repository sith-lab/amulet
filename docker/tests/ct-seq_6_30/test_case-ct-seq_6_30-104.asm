.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -11 # instrumentation
SBB BL, BL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
STC  
LOOPE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 11 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
ADD RBX, RDX 
CMOVNL RAX, RAX 
CMOVNS EDI, EAX 
MUL SIL 
ADD SIL, 56 # instrumentation
CMOVNZ AX, AX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RSI] 
MOVZX AX, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
IMUL CX 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
CMOVL BX, DX 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -32 
DEC CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 121 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RAX] 
CMP EDX, EDI 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
