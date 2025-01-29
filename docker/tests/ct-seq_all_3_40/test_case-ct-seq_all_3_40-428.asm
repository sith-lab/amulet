.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -67 # instrumentation
CMOVNL RDI, RSI 
MUL BL 
IMUL EBX, ECX, -59 
IMUL DL 
SBB EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
SUB AX, -15740 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
MOV EDX, EDI 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
MUL EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], DX 
MOVZX BX, BL 
CMOVNS AX, SI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -88 # instrumentation
CMOVB EBX, EBX 
NEG RBX 
MOVZX ESI, BL 
XADD CX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
SUB RBX, RDX 
MOVSX ESI, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD SIL, -97 # instrumentation
CWD  
XCHG CL, SIL 
CMOVO AX, AX 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDX 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
IMUL RDX 
MUL DI 
DEC RAX 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
STD  
ADC EBX, 49 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
