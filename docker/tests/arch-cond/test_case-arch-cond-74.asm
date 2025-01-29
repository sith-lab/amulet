.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RDI, RBX 
IMUL DX, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
CMOVB BX, CX 
CMPXCHG DIL, BL 
IMUL DI, BX 
XADD DL, CL 
AND RSI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RSI], RAX 
SETNP AL 
CMOVNL ECX, EAX 
JMP .bb_main.1 
.bb_main.1:
XOR AX, 6808 
AND RDX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
CMOVNLE DX, BX 
ADD ECX, ECX 
TEST RSI, RAX 
MOV ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
NOT CL 
AND RDI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RDI] 
ADC CL, CL 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RCX] 
CMOVL SI, AX 
TEST AL, -52 
BSWAP RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], 80 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RBX] 
MOVSX RAX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 71 
CMOVZ RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND AL, 117 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
TEST SIL, -116 
OR AL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDI] 
DEC EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
