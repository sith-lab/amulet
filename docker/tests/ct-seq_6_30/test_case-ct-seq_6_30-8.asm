.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL AL 
AND RDI, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RDI] 
MOVSX ECX, SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
CMC  
SUB AX, -13999 
JMP .bb_main.1 
.bb_main.1:
DEC AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -107 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RSI] 
SBB ESI, 55 
SBB DIL, AL 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -95 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RAX] 
MOVSX RCX, CX 
CMOVL DX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RCX] 
JP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], -35 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD DIL, 110 # instrumentation
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], -49 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -86 
CLC  
SUB AL, 77 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
