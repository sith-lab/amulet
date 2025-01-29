.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 60 
CMOVL EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX], -51 
MOVZX EDI, CX 
ADC EBX, 34 
CMOVNLE RDX, RDX 
IMUL EBX, EAX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
LEA RAX, qword ptr [RCX + RBX + 38013] 
CMP DIL, BL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 32 # instrumentation
CMOVNO DX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -124 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -40 
ADD AX, BX 
MOV ECX, 1867416551 
LEA CX, qword ptr [RSI + RAX + 2597] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
ADD BX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
ADD SIL, 119 # instrumentation
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
MOVZX RAX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ECX 
ADC EAX, -559250498 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
