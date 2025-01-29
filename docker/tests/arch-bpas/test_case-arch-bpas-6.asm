.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 18 # instrumentation
SETL AL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
CMOVB SI, CX 
ADD SI, 20 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
SBB RAX, RDX 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -92 # instrumentation
CMOVBE BX, DI 
AND RAX, -1234951888 
ADC RAX, -1861366915 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 62 # instrumentation
CMOVZ ESI, EBX 
CMC  
SETZ AL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 10 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -3 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], 1813475690 
AND RDX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
CLD  # instrumentation
NEG EDX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 68 
TEST RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
IMUL DI 
DEC SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RAX] 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RCX], SI 
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
CMP AX, -17018 
MUL DL 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -27 
AND BL, BL 
AND AL, -15 
ADD RAX, 2097140013 
MOVSX ECX, AL 
CMOVNZ ESI, EDI 
MOVSX DI, BL 
MUL EAX 
NEG DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], DI 
MUL BL 
SETO AL 
SBB RDI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
