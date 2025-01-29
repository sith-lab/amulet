.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 34 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RBX] 
CMOVL SI, CX 
INC CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], CX 
NEG AL 
ADC ESI, -107 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -15 
SAHF  
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DIL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
ADD AX, -14742 
ADC SI, SI 
AND RBX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
CMOVNB EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -107 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
