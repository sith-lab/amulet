.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], SIL 
NEG DI 
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
ADD BL, -60 
CMOVB EDI, EBX 
CMOVNBE RSI, RAX 
SUB RAX, -2063818115 
CMP DX, DI 
CMOVNL CX, BX 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RAX] 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
CWD  
MOVZX EDX, SIL 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
ADD DIL, -70 # instrumentation
ADC EBX, ESI 
BSWAP RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
ADD RDI, 9 
AND RDI, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
CMOVNLE RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
ADD AL, 54 
CMOVNO RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDX 
DEC AL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
