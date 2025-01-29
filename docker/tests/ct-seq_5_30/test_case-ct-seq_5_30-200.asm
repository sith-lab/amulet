.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RBX] 
ADD AL, 57 
SBB RBX, RDI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 94 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RAX] 
MOV BL, 36 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ESI 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 127 
IMUL ECX, ESI, -95 
ADD DIL, 114 # instrumentation
CMOVP RBX, RDI 
INC BL 
MOVZX CX, DL 
CMOVNZ AX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RDI 
CMOVO RDI, RCX 
ADD EDX, EDI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
CMOVP EBX, EDX 
MOVZX RCX, SIL 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
STC  
CMC  
SUB DIL, 29 
AND RDI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDI] 
MOVZX EDX, BX 
BSWAP RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
