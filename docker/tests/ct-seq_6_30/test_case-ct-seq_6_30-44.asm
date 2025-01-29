.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 122 # instrumentation
ADC DIL, 10 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
ADC RAX, -77 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -106 # instrumentation
SBB EAX, -1371418402 
ADD DI, DI 
MOVZX RBX, AL 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RAX] 
SUB RCX, 74 
MOVSX EDI, BX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 77 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -103 
CMP RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RBX] 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
NEG SIL 
SUB RDI, RDI 
CMOVNL BX, SI 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -122 # instrumentation
CMOVLE ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], SI 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MUL DL 
IMUL DI, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
