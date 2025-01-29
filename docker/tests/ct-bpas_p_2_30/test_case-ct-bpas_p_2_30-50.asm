.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EBX 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
NEG SIL 
AND RAX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RAX] 
MOV RAX, -2631343374235453761 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -96 
DEC RSI 
AND RCX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RCX] 
MOVZX ESI, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RAX] 
CMOVNP DI, DI 
MUL CX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -83 
ADD RAX, -625481963 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -51 # instrumentation
SBB CL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RSI] 
IMUL ECX 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX], -2 
CMOVNO EDI, EBX 
MOVZX RAX, BL 
CMOVB RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RBX] 
MUL DL 
ADD DIL, BL 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
