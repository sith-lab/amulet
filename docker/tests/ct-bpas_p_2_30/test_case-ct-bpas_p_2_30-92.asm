.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RCX] 
CMOVNB EBX, ECX 
IMUL BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RSI] 
ADD AL, 85 
IMUL RAX, RDI, 109 
ADD DIL, 73 # instrumentation
CMOVZ BX, CX 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], 73 
INC EDX 
SBB DIL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
LEA DX, qword ptr [RBX + RSI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
ADD SIL, 78 # instrumentation
CMOVL BX, DI 
BSWAP ECX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RCX 
CMP AL, -31 
CMOVNZ AX, SI 
MOVSX ESI, AL 
CMP RDI, 60 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
ADC RBX, RBX 
SUB EDX, 29 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDX] 
CMP AL, 124 
SUB RSI, -55 
MOVZX EBX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
