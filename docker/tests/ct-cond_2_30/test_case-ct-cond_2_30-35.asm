.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RAX, 102890590 
STC  
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
SBB AL, AL 
SUB RSI, 36 
CMOVZ CX, AX 
CMOVNZ EDX, ECX 
ADD RAX, -1363554166 
MOV CX, 4317 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -2 
ADC CL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 5 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP DIL, AL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -54 
CMOVB EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -91 
CMOVNL BX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -62 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RCX] 
CDQ  
MOV SIL, BL 
MOVSX ECX, DL 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RBX] 
IMUL RCX, RAX 
ADD DIL, -47 # instrumentation
CMOVNZ DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
