.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RBX] 
IMUL EDI 
ADD SIL, -14 # instrumentation
CMOVZ EBX, EAX 
XOR BL, DIL 
CBW  
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], EAX 
SBB EAX, 1667084954 
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RCX 
ADC AX, -10898 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 22 
CMOVNB AX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RSI] 
CMOVO RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RSI] 
CMP RAX, RCX 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
XADD RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -116 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], CL 
ADD AL, CL 
AND EDI, EBX 
XOR EBX, 105 
ADD EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 24 
SUB CL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], DX 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, -106 
XOR RBX, 76 
XCHG RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], 102 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
CMPXCHG EBX, ESI 
OR RAX, 69 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
SETO DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
