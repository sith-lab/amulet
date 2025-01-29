.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 45 # instrumentation
CMOVNL AX, DI 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], CX 
IMUL SI, BX 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
SBB AX, -31605 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
CBW  
MOV DL, DL 
ADD EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI] 
CMP EAX, -1586349418 
ADC CL, CL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
CMOVNS EBX, EBX 
CMOVL EDI, EBX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RBX] 
MUL RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
MOV CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
