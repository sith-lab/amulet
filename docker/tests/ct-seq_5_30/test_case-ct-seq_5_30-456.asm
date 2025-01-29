.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDI] 
SBB SIL, 20 
CMP ECX, EDX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -70 # instrumentation
CMC  
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -38 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDX] 
MOVSX ESI, BX 
LEA DX, qword ptr [RCX + RDI + 4350] 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RCX] 
CMOVZ CX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RSI] 
MOV RBX, RDI 
BSWAP RDI 
JMP .bb_main.3 
.bb_main.3:
DEC SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDI] 
SUB SI, 78 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -68 
AND RDI, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RSI] 
XCHG EBX, EBX 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -55 # instrumentation
CBW  
CMOVNB AX, BX 
CMOVBE EDI, EDI 
SUB RAX, 1828874747 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
