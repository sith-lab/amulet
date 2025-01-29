.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -49 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
SBB SIL, -62 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RBX] 
MOVZX AX, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -77 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RBX 
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
MOVZX EDI, BL 
SBB AX, 30350 
IMUL EDX, EDX, 90 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RBX] 
CMP SIL, 23 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RSI] 
OR BX, 0b1000000000000000 # instrumentation
BSF BX, BX 
MOV DL, 5 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
