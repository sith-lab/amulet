.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 42 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
LEA ESI, qword ptr [RSI + RSI + 1826] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RAX] 
MOV DL, DL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
ADD DIL, -41 # instrumentation
BSWAP RCX 
ADC DX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 47 # instrumentation
CMOVNO ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -64 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
MOVZX BX, DIL 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
MOVSX SI, DL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RSI], 95 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
ADD EDX, -111 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
CMOVNS DI, BX 
ADD SIL, 58 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
