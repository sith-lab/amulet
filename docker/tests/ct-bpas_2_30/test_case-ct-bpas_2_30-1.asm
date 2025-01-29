.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDX] 
MOVZX RSI, BX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RAX] 
IMUL DI, DX, -29 
SUB AX, -20854 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1899493850 
NEG DL 
AND RAX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
XCHG RAX, RDX 
MOVZX EDX, DX 
CMOVNLE DI, AX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV EAX, 262625308 
CMP BX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
INC BL 
MOV RDI, -7687813875060951785 
CMOVNLE RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 108 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
CMP AL, -1 
SUB CX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
XCHG DX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
MOV BL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
