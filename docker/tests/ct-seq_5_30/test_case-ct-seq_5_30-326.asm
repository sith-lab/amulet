.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
CMOVNBE ESI, EDX 
CMOVLE RSI, RSI 
ADD SI, BX 
JO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RCX] 
CMP SI, DI 
DEC BL 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -127 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -88 # instrumentation
CMOVNBE EBX, ESI 
SUB DI, -96 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
INC AX 
DEC AL 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDI] 
CMOVNB EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP AL, -76 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RDX] 
XCHG RSI, RAX 
MOV RCX, 4041494600152485551 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
