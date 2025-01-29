.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RBX] 
CMOVS EAX, EBX 
MUL DI 
MOV DL, DL 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], -114 
JMP .bb_main.1 
.bb_main.1:
CMP DIL, -123 
CMP RDI, -15 
SBB DIL, CL 
SUB AL, -41 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
STC  
AND RBX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL RAX 
ADD DL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP AL, -97 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -111 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
INC RAX 
SBB DIL, 70 
IMUL BL 
LEA RBX, qword ptr [RAX + RCX] 
SUB RAX, 1545250096 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
