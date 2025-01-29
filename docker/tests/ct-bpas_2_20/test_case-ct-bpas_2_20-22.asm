.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
INC SIL 
BSWAP RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
ADD AL, -72 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 99 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -23 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
ADD AL, -72 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
MOVSX ECX, CX 
MOV RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RSI] 
ADD AX, -12 
STC  
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
