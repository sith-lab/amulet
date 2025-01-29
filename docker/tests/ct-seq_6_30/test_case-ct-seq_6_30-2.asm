.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -48 
MOVZX BX, DL 
CMOVNZ DI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
CMOVZ EDI, ECX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -103 # instrumentation
CMOVS RCX, RBX 
CMOVL EDX, EBX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], SIL 
CMOVNLE BX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], SI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 34 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 79 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -9 
ADD CL, DL 
SUB EBX, -21 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 41 
IMUL DI, DI, -101 
DEC RCX 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 79 # instrumentation
CMOVNLE EDI, ECX 
MOV BL, SIL 
CMOVS RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RSI] 
IMUL ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 78 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
CMOVP DX, BX 
MUL RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
