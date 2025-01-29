.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
TEST RAX, 1792399585 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
CMOVNBE DX, DI 
SUB DI, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
SBB EBX, -19 
XOR DL, BL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB CL, 39 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
MOVSX RSI, CX 
XADD BL, DL 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], ECX 
TEST AX, -25359 
AND CL, 69 
SUB AX, 14985 
SBB EBX, -3 
AND RDI, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DL 
CMOVNZ AX, BX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RSI 
TEST AX, -5030 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RSI] 
TEST SIL, DL 
INC RCX 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL ESI, ECX, -22 
ADD DIL, 89 # instrumentation
CMOVP SI, DI 
CMOVS EDI, EAX 
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
OR EAX, -125672670 
XOR EDI, EDI 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -89 # instrumentation
CMOVNO EDX, EDI 
ADD ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDX] 
CLC  
BSWAP RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
