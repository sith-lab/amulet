.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR CL, BL 
ADC RCX, 82 
ADC DIL, 48 
IMUL SIL 
TEST DIL, 57 
CMOVZ RDI, RDI 
DEC RCX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RSI] 
ADD SIL, -100 # instrumentation
CMOVNB EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RSI] 
CMOVNP AX, DI 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], CX 
ADD EAX, 1737406989 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
SUB RDI, RDX 
AND BL, DL 
MOV CL, 43 
TEST AX, -19044 
XOR AL, 64 
JMP .bb_main.2 
.bb_main.2:
INC RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
INC DIL 
SBB AX, 24648 
CMOVNP BX, AX 
CMOVNZ BX, SI 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RCX] 
SETBE DIL 
OR EAX, 2135707388 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RAX 
ADD EDI, 2 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDI] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 3 # instrumentation
CMOVNP DI, AX 
AND RCX, 86 
ADC DL, CL 
SUB EAX, 830875490 
SETB CL 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
XOR RSI, 60 
CMOVZ RDI, RDI 
BSWAP RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
