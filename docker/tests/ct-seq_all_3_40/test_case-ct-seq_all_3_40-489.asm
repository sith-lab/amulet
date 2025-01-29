.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD CL, BL 
SETP AL 
AND RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RBX 
AND RSI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RSI] 
OR AL, 31 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
ADC AX, 8390 
SETLE DL 
MOV EAX, 227745742 
SUB EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], BX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL SI, CX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RBX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RBX] 
XOR RCX, -25 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
ADD EAX, 1420686325 
DEC BL 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], -106 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG EDI, EDI 
CLD  
OR DIL, -76 
OR DL, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
ADD SIL, -85 # instrumentation
CMOVNBE SI, DX 
ADC CX, -32 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
SETZ BL 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RBX] 
CBW  
SUB AX, -16 
CMOVP BX, DI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
