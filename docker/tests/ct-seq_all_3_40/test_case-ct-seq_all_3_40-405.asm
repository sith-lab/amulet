.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG AL, DIL 
CMP CX, -14 
AND RCX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RCX] 
OR RDI, RAX 
MOV RDX, 108797444975197827 
XCHG RDX, RAX 
CMOVNB RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
CMOVNZ EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -20 
ADD RSI, RDX 
XOR RAX, -97108995 
XCHG EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DL 
CMOVNP RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDI] 
ADD AL, DL 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
ADD DIL, -35 # instrumentation
SETO AL 
AND EAX, 542089026 
NOT SI 
DEC DIL 
NEG BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], -124 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], AX 
MOVSX RDI, DL 
SUB BX, 47 
CMP RDI, -95 
AND RAX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RAX] 
CMOVNL RCX, RAX 
SBB EAX, -4 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
DEC AL 
TEST ECX, -1021236002 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX] 
ADD SIL, -23 # instrumentation
CMOVNLE RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
