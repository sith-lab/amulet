.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -84 # instrumentation
SBB AX, -31398 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDX] 
IMUL EAX, EDX 
ADD SIL, -68 # instrumentation
CMOVNS EAX, ECX 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD EAX, -480008578 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -84 
DEC ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RAX] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 82 # instrumentation
ADC BL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDX] 
CMOVNZ DI, CX 
LOOPE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
CMOVNBE AX, CX 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDI] 
MUL RDI 
NEG CX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -27 
CMOVLE RAX, RDI 
CBW  
MUL RSI 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX], -87 
SUB RAX, -1921294830 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
