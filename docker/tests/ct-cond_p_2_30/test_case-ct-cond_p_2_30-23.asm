.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG DX 
CMOVL RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
CMOVNLE DI, DX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -8 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 69 
CMOVZ CX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
SBB CX, SI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RBX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 17 
CBW  
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -122 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RBX] 
MOV RDX, -6884939273971831689 
ADD RCX, 118 
IMUL RDI 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
SUB CX, 85 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
CMOVNS DX, CX 
SBB SIL, 52 
CMOVO RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
