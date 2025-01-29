.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB SIL, 15 
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -61 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
JZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -124 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
CMOVNO DI, AX 
NEG EDI 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], SI 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CBW  
MUL DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD AX, -26123 
MOV DI, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
CMP EDX, EDX 
CMOVO SI, DI 
JL .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
LEA DX, qword ptr [RAX + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
CMOVNZ EDX, EDI 
STD  
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
CMOVNS SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
