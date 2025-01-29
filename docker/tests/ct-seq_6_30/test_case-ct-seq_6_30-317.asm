.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
SUB AX, -10055 
CMOVNZ RSI, RBX 
CMOVZ ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
CMOVNZ EBX, EDI 
SUB BL, SIL 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CWDE  
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RCX] 
CMOVL RAX, RDI 
XCHG BL, CL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
SUB DIL, DL 
SBB DX, 81 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RAX] 
IMUL EDX 
ADD DIL, 12 # instrumentation
CMOVNL RSI, RDI 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RAX] 
CMOVZ AX, CX 
CMP RAX, -1774867540 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -18 # instrumentation
SBB AL, -93 
CMOVS RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RSI] 
INC AX 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
