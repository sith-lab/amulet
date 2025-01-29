.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -11 
CMP RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 597698171 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], CX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -90 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
SUB CL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
STD  
CMOVNP AX, BX 
SUB RAX, 1478718077 
AND RDX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
