.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -105 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RSI 
MOV DI, CX 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
CMP AL, CL 
ADC ESI, -118 
JMP .bb_main.1 
.bb_main.1:
LEA SI, qword ptr [RCX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
DEC EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVSX RAX, BL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 28 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 93 
INC BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 27 
SBB RBX, 35 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -66 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -64 
MOV RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 88 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RSI], -121 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
