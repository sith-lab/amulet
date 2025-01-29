.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC AX 
ADD RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EBX 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -39 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], CX 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDI] 
CMP BX, -86 
XCHG RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 74 
AND RSI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RSI] 
IMUL DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -62 
CMOVNS RDI, RAX 
MOV BL, -113 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDI 
SUB DIL, 79 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -6 
CMP ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
IMUL EAX, EBX, 3 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RSI] 
XCHG RBX, RAX 
CMP CX, 21 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
