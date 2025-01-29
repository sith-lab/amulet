.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RBX 
ADC RAX, -1775306516 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV BL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RBX] 
SUB BX, 77 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -79 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
CMOVNS DX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], AX 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
