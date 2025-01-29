.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
INC EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
CMOVLE RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDX] 
ADD RAX, 61 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EDI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
LEA RDX, qword ptr [RSI + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -883804779 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DL 
MOV DI, 8195 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
