.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RDX, 23 
CMOVNZ SI, AX 
AND RAX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RAX] 
CLD  
NEG EDX 
ADD RDX, RSI 
CMOVNP BX, DX 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -21 
CMOVNO DI, BX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], CX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX], -75 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EBX 
JMP .bb_main.2 
.bb_main.2:
MOVZX AX, AL 
ADD RBX, 126 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
CMOVNZ DX, CX 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 13 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RSI] 
CMOVS ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 30 
IMUL EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
JMP .bb_main.5 
.bb_main.5:
CWD  
DEC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
