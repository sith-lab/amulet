.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EBX, DL 
MUL RCX 
ADC BX, -119 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RCX] 
CMOVNBE DI, SI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD RAX, 76947976 
CMOVNB ECX, EDI 
ADC BL, BL 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RCX] 
CMP EAX, -1590351126 
CMP AL, CL 
JS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP CX, -53 
INC RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDI] 
CMOVZ RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RSI] 
MUL ESI 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX], -100 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
