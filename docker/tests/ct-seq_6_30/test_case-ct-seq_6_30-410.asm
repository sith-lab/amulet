.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
CMOVNLE RBX, RSI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RCX 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
SUB AX, 81 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -69 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
JNBE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX] 
IMUL DI, DX, 126 
ADD DIL, -24 # instrumentation
CMOVS EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -40 
CMOVB RDI, RAX 
CMOVNZ EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 22 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MUL AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDX] 
CMOVO DI, AX 
CMOVNLE BX, DX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -70 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
ADC EAX, 109 
MOV RDX, 7845693648719832819 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
CMOVNL ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
MOV RDI, 6178723943786328559 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDX] 
CMOVNS EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
