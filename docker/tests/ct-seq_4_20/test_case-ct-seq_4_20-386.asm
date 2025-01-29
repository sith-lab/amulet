.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -8 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -21 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RSI] 
SBB RAX, -1 
MOVSX EAX, BL 
AND RBX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RBX] 
CMP RAX, -1213833581 
SUB EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 86 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
ADD SIL, 88 # instrumentation
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 11 
ADD SI, BX 
IMUL EDI 
CMP BL, AL 
MOV DX, BX 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
