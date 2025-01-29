.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RCX], EBX 
CMOVNB AX, BX 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
SBB AX, -114 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -93 
IMUL ECX, EBX, 91 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI], -103 
JMP .bb_main.1 
.bb_main.1:
BSWAP RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
LEA EBX, qword ptr [RDX + RSI + 8953] 
CMOVNP DX, AX 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
NOP  
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 4 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
SETNP AL 
INC SIL 
NOP  
SBB AL, 27 
MOV RCX, 422706696736136677 
ADC DIL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RSI 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLD  # instrumentation
ADD SIL, 24 # instrumentation
SBB ECX, 26 
SETNL BL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
CMOVBE EBX, EAX 
JBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 2 
SUB AX, 98 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], -123 
AND SI, DI 
CMOVNZ RDI, RDX 
SETS CL 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -63 # instrumentation
CMOVNO SI, BX 
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
