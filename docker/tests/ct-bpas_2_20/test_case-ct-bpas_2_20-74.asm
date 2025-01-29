.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
IMUL DX 
ADD ESI, 53 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RAX] 
ADC AL, -96 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
MOVZX BX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 96 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -54 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -49 
ADD RSI, -61 
CMOVS ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
ADC DX, -88 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 80 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
