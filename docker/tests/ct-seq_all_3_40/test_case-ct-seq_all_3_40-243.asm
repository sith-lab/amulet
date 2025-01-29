.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 101 
SUB RSI, -101 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
SBB RAX, -457446898 
SETNB BL 
CMOVS EDX, EDI 
ADD EDI, -33 
CMP BL, -7 
CMOVNP EDX, ECX 
SUB AX, 32241 
INC DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], AL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], -13 
ADC DIL, 100 
MUL EAX 
ADC CX, BX 
CMPXCHG DIL, CL 
AND RDX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RDX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -79 
AND RAX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RAX] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
MOV ESI, 1390560430 
NOT RBX 
INC AL 
XOR SIL, 15 
TEST EAX, 1355856982 
OR AL, -60 
MUL DL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], DIL 
CMPXCHG SIL, CL 
AND RBX, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDI 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDX] 
TEST AX, 3944 
SUB DL, -120 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
