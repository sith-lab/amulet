.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -77 # instrumentation
SETNLE AL 
IMUL EBX, EDI, -61 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
MOVZX AX, SIL 
XOR BL, -58 
CMOVLE BX, DI 
SBB EDI, EDI 
MOVZX RAX, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], 125 
SETLE DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -59 
MOVSX EDX, DL 
SETNO CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DI 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -69 # instrumentation
CMOVP ESI, EBX 
XCHG EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
CMP SI, -105 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -15373 
AND RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
OR RAX, 713901352 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -1661201608 
XCHG EAX, EDX 
CMP RBX, 12 
JMP .bb_main.2 
.bb_main.2:
MOV RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], SIL 
AND SIL, DL 
AND DIL, 53 
MOVSX RDX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
TEST RAX, -2140900858 
CMC  
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], EDX 
AND RSI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
CMPXCHG EDI, EDI 
CMOVZ EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
