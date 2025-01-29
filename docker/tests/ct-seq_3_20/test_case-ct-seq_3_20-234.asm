.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
AND RSI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
SUB EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
LEA BX, qword ptr [RCX + RDX + 5854] 
CMOVNS EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -82 
AND RSI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -23 
CMOVNBE RCX, RAX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 52 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -35 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
