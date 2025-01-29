.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RBX, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
SBB AX, BX 
CMP CX, -109 
INC RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RCX] 
ADC CX, 35 
NEG DX 
ADC AL, SIL 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 92 # instrumentation
MOV RSI, 1177992227916828715 
CMOVLE RAX, RBX 
MOVZX SI, DIL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -13 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
INC AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDX] 
BSWAP EDX 
ADC AX, 32328 
ADD BL, -101 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
ADD SIL, -60 # instrumentation
CMOVNS RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DIL 
ADD EDI, EAX 
MOVSX AX, BL 
ADD SIL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
