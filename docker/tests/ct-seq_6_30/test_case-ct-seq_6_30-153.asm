.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV ESI, 22129013 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RBX] 
SBB AX, -19974 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 3 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -74 
AND RSI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RSI] 
ADD AX, 20219 
IMUL EAX, EBX 
MOVSX RSI, CX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RCX] 
CMOVNBE SI, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDX] 
LEA ESI, qword ptr [RCX + RDI + 7817] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDX] 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -9 # instrumentation
CMOVNO BX, BX 
MOVZX EAX, SIL 
CMOVNB RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX] 
SBB DL, 32 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RDI 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -39 # instrumentation
CMOVNS BX, DX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
SUB CL, BL 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
MOVSX BX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
