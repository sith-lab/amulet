.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RCX, RBX 
TEST CL, SIL 
XCHG CL, DIL 
XADD EAX, EBX 
IMUL AL 
ADD DIL, -53 # instrumentation
SETZ CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
CMP EBX, EBX 
CMOVNLE RAX, RDI 
CMOVNBE EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDI] 
CMOVO DI, DI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RSI] 
XOR EAX, ECX 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], 111 
AND RBX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RBX] 
CMP EDX, -96 
CMOVNO RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RDX] 
SUB RSI, -80 
SETS DL 
AND RCX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RSI] 
MOV AX, 12796 
MUL CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RSI] 
MOV DL, CL 
OR BL, CL 
LEA RCX, qword ptr [RDI] 
ADC EAX, -1467301499 
IMUL RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
ADD DX, 105 
CMOVNL EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
ADD EAX, 110227739 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
