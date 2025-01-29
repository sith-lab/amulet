.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], SI 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
SUB AL, 69 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDX] 
MUL DL 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -95 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -11254 
MOV EDI, 332936735 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RAX] 
MOVZX DX, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 70 
CLC  
AND RAX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RAX] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
CMOVNS RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 52 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
