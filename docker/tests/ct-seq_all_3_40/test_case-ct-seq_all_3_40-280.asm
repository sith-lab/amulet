.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 91 # instrumentation
CMOVO CX, AX 
SBB BL, 96 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RBX 
XOR RDI, -46 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
CMOVNS RAX, RSI 
CLD  
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
MOVSX EBX, SIL 
CMOVNS EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
XCHG SI, DX 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
BSWAP RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1177829249 
AND RDI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDI] 
DEC DL 
IMUL RDI, RCX 
ADD DIL, -40 # instrumentation
SETP SIL 
CMPXCHG DL, AL 
IMUL EAX, EDX, -15 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
SBB AX, -1 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
ADD DIL, -8 # instrumentation
CMOVB RDI, RAX 
CMOVZ ESI, ECX 
CMP RAX, 386397566 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RDX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], AL 
IMUL ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RDI] 
AND AL, -98 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
XOR AX, -10660 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
