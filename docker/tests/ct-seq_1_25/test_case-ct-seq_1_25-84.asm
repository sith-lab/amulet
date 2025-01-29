.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RSI 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
BSWAP EDI 
DEC DL 
ADD CX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RAX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RAX 
CWD  
SAHF  
MOVZX EDX, CL 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -103 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], CX 
CMOVL SI, AX 
ADC RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
SBB AX, -13772 
SBB ECX, -19 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], CX 
ADC AX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
