.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RBX] 
SUB ECX, 35 
MOVZX RBX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
IMUL RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RSI 
CMOVNZ RDI, RSI 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
ADD SIL, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
DEC AX 
INC CL 
CMOVNB EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX], 67 
ADD SIL, -99 # instrumentation
CMOVS RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DI 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -11 
IMUL DIL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DIL 
CMOVNZ RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 237669865 
MUL ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], CX 
SBB ESI, -25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
