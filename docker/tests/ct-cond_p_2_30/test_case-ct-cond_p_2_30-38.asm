.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG ECX 
INC SI 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -53 
AND RDX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RSI] 
SUB CL, 63 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
NEG BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 45 
AND RDI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDI], 107 
SUB AX, 25383 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -64 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 34 
DEC CL 
CMOVNS ESI, EBX 
ADC RAX, -1814064446 
OR DX, 0b1000000000000000 # instrumentation
BSR CX, DX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -26 
CMOVP RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 52 
MOVSX EDI, CL 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
