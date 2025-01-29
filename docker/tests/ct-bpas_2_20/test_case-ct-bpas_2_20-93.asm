.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RSI], 77 
AND RBX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 31 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RAX] 
ADD DIL, 9 # instrumentation
CMOVS CX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
CMOVL ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 105 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 27 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
