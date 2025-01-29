.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
IMUL DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DI 
CMOVLE DI, DI 
CDQ  
SETNO SIL 
OR DL, 18 
SETNS AL 
MOVZX RAX, BL 
CMC  
MOVSX RCX, BX 
TEST DIL, SIL 
CMOVNB RCX, RSI 
CMP SIL, -27 
MOVSX ECX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -114 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], 76 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
CMPXCHG DIL, SIL 
XCHG RAX, RDX 
XOR AL, -58 
IMUL EDI, EDX 
ADD DIL, -106 # instrumentation
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDX] 
NOT RDX 
SETS DL 
ADD ESI, -77 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDX] 
OR SI, BX 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 66 
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI], 39 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 72 
SETNO DIL 
CMP RDX, -67 
ADD EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
SUB RBX, RCX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RSI 
ADD DIL, 70 # instrumentation
ADC CL, -43 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
