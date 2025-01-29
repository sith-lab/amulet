.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MOVZX RCX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -89 
INC DX 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
CMP RAX, -82 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
CMOVNBE EDX, ECX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BSWAP ESI 
MUL RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
CMOVNB EBX, ESI 
BSWAP RSI 
SUB CL, 79 
CMOVNO RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDI 
SBB EAX, -1076301781 
MUL AL 
SBB EDX, EBX 
XCHG BX, BX 
MOVZX EDI, CL 
CMOVLE EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RSI] 
XCHG EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
