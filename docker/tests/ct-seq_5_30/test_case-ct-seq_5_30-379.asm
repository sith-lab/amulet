.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
ADD ECX, -103 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RAX 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
SUB ESI, 124 
SUB RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RAX] 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 22 # instrumentation
SBB DIL, -39 
LEA DI, qword ptr [RDX + RCX + 12867] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -35 # instrumentation
MOVZX CX, AL 
CMOVL RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RCX] 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
BSWAP EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
IMUL RAX, RAX 
ADD SIL, -57 # instrumentation
CMOVNS ESI, ESI 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RBX] 
CWDE  
SUB DX, DX 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -23326 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
CMP RDI, -26 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
