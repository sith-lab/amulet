.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RCX] 
CMOVNS RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDX] 
CMP EAX, -483213770 
NOT RCX 
XOR RAX, -1549194483 
INC SIL 
XADD RDI, RBX 
MUL EDI 
CMP CX, AX 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RSI, RSI 
OR AX, -1326 
BSWAP RDI 
XADD AL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
SETB AL 
SETNBE BL 
DEC AL 
SETNO AL 
CMP SIL, 42 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 86 
OR DL, SIL 
SETS SIL 
AND SIL, -63 
AND RDX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDX] 
XOR EAX, 707927480 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDX 
ADC EAX, 328239502 
JMP .bb_main.2 
.bb_main.2:
XADD RCX, RDX 
XOR BL, 119 
SETNP BL 
AND ECX, -40 
STD  
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI] 
ADD SIL, -55 # instrumentation
CMOVNS RCX, RCX 
IMUL RSI, RDX, -77 
CMOVO BX, DX 
ADC AX, -415 
SETNLE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
