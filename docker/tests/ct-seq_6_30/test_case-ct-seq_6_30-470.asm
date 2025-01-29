.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 4 
CWDE  
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
LOOPNE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
MOVSX EBX, CL 
ADD RAX, -78 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
ADC SI, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
JS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RCX], -11 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDX] 
LEA CX, qword ptr [RCX + RCX + 48963] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -5 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
MOVSX ECX, AX 
CWDE  
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
ADD DX, -123 
MOVZX RBX, AX 
JMP .bb_main.4 
.bb_main.4:
XCHG BX, AX 
SUB BL, CL 
CMOVO RCX, RBX 
MOV SIL, BL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RBX] 
MOV RCX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
