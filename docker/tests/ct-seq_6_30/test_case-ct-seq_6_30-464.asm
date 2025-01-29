.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RDI, DX 
DEC EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RAX] 
LEA RAX, qword ptr [RCX + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ESI 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
CMOVL RSI, RBX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], -52 
CMOVS RDI, RDI 
ADD RBX, 17 
SBB RDI, -107 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -91 
SBB RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 103 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 53 
CMP RAX, -278265307 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
CMP AX, 21972 
JMP .bb_main.3 
.bb_main.3:
ADD ECX, ESI 
ADD RDI, -1 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -18 # instrumentation
CMOVBE CX, BX 
MUL RBX 
ADD CL, 0 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
CMOVNZ DI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RBX] 
IMUL RSI, RDX, -59 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
