.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
CMP CX, 40 
SBB AL, 2 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP DI, -70 
CMOVNO ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
XCHG SI, AX 
OR DX, 0b1000000000000000 # instrumentation
BSF DX, DX 
MUL RDI 
MOVZX EBX, CL 
SBB DX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 39 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -21 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], BX 
ADD EAX, 842439224 
CMOVNS EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EBX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 117 # instrumentation
ADC EBX, ESI 
CMOVNBE RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -10 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RBX 
LAHF  
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
ADC DX, SI 
AND RAX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RAX] 
IMUL SI, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
