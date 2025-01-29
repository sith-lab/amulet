.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RBX] 
CMOVNP AX, BX 
LEA BX, qword ptr [RSI + RDI + 1957] 
CMOVLE AX, CX 
SBB EAX, 2134582689 
TEST RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RBX] 
SBB EAX, -121683738 
OR DIL, BL 
MOVSX SI, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
SUB ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RSI] 
XOR CL, BL 
TEST RCX, RBX 
AND ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
ADC AL, -28 
CMOVB CX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EDX 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 59 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DIL 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
CMPXCHG BL, CL 
CMOVNLE RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], ECX 
NEG EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
SETB DL 
SUB EBX, 108 
SBB CL, 77 
SETNBE AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
