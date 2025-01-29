.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC CL 
CMOVNS BX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDI] 
CMOVNS RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -54 
JNS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RBX] 
MOV RDI, RAX 
MUL ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDX] 
CMOVNS RDX, RDI 
SBB DI, 6 
AND RDI, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
SUB CX, -43 
JMP .bb_main.3 
.bb_main.3:
NEG DL 
SUB DL, 7 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DI 
ADD DIL, -82 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
MOV DI, SI 
CMOVB SI, SI 
LEA RDX, qword ptr [RDI + RSI + 65410] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -101 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -121 # instrumentation
ADC AL, 88 
AND RBX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
