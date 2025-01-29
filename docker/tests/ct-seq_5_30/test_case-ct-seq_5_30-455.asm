.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -62 # instrumentation
MOVZX DI, BL 
SBB DL, 93 
IMUL ECX 
CMP BX, SI 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 70 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
IMUL RDX, RCX, -108 
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RBX] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -103 # instrumentation
ADC DL, CL 
CMOVBE BX, DX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EAX 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 108 # instrumentation
SBB RAX, -1724584445 
CMOVNLE SI, DI 
MOVZX RDX, DI 
NEG BX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
CDQ  
SBB DI, 39 
LEA EBX, qword ptr [RCX] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -17193 
ADD RAX, 1755022020 
CMP BL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
