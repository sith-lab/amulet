.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL ECX 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], 40 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 72 
OR DL, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], SIL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], CX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RSI] 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 18 # instrumentation
CMOVS DI, DX 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
CMOVS RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RSI] 
ADC CX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 51 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
