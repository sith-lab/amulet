.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND DL, -107 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
XOR AX, -6155 
SBB CL, -63 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
IMUL ESI 
AND RAX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RAX] 
OR RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
SETNB SIL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DL, -18 
CMOVBE EAX, EAX 
IMUL EDX, EBX 
AND AX, 11671 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -88 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RCX] 
MOV AL, 74 
AND RBX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RBX] 
AND RAX, 681446851 
CMOVNB ECX, EAX 
CMC  
CMC  
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RSI] 
OR DX, BX 
IMUL DX, SI, 92 
MOVZX RBX, AX 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -21691 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], 36 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RCX] 
DEC CL 
BSWAP EDI 
MOVSX DX, AL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
MOVSX CX, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
