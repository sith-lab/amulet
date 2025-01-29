.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RDI, RDI 
ADD DIL, 88 # instrumentation
CMOVZ CX, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RSI] 
SBB DIL, -40 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RAX] 
NEG RDI 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
MOVZX RAX, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], SI 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
