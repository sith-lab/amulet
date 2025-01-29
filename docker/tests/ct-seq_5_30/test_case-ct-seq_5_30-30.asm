.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -110 # instrumentation
CMOVP RDI, RCX 
SBB RSI, RDI 
MUL AL 
CMP EAX, -231008195 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], CX 
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 89 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
IMUL RSI, RSI 
SAHF  
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
CMOVBE DI, CX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -79 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDI 
ADC BX, 62 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 54 # instrumentation
CMOVLE EDI, ECX 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
CMOVBE SI, DX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], BX 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -103 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
XCHG DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
