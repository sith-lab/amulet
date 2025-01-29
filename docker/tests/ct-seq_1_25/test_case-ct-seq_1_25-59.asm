.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], SIL 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -61 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
CMOVNL RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RAX] 
CMOVB EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
CMP CX, SI 
MOVZX RCX, BL 
ADD CL, CL 
CLC  
SUB SIL, -45 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RBX] 
XCHG SI, DX 
IMUL BX, DX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -124 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
