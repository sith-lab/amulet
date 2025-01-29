.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOV EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -116 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -78 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RCX] 
BSWAP EDX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -24 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDX 
AND RAX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RAX] 
IMUL EBX 
JMP .bb_main.3 
.bb_main.3:
IMUL RCX 
ADD SIL, -85 # instrumentation
CMOVNZ ESI, EDI 
ADD AL, 48 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DIL 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
