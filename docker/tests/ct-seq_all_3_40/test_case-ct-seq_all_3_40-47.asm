.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DL, AL 
SUB EAX, EDX 
AND BX, 28 
MOV EDI, 941108886 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
IMUL ECX 
ADD EAX, -1598383770 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RBX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
CMOVB BX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -33 
MOV EBX, EDI 
ADD DL, 42 
CMOVNO EBX, EDI 
MOV BL, -98 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EBX 
CMOVNL SI, CX 
MOVSX RDX, BL 
OR RAX, -2135715538 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], 51 
CMP DIL, -20 
SBB RAX, -74 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 103 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
ADD EDI, -101 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 37 # instrumentation
MOVSX EDI, BX 
CMC  
ADC EAX, -1840383184 
MOVSX ECX, DX 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
CMP DX, -72 
CMOVNO DI, DI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], EBX 
CMP SI, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
