.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDX 
MOVSX RAX, AX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 116 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -95 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DI 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 126 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
ADC AL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], SI 
AND RDX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 99 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
