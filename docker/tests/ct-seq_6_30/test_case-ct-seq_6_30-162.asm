.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL DL 
MOVSX RSI, AX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
ADC RAX, 1387995565 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], CX 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
CMP AX, 21575 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX], -112 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], SIL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 56 
CMP DIL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -82 
CMOVS EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX], -73 
JMP .bb_main.4 
.bb_main.4:
SUB DI, BX 
MOVZX RSI, DIL 
CMP RCX, -104 
NEG EDI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
LEA EBX, qword ptr [RSI + RBX + 29183] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDI] 
CMOVBE RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DI 
AND RAX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RAX], 21 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
