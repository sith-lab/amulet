.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
INC RDX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -31 # instrumentation
SBB AL, -22 
SUB EBX, 65 
ADD RAX, 85 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDX] 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 99 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
ADD DIL, -53 # instrumentation
SBB AL, -96 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EBX 
SUB RAX, 1452958006 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
CMOVNL CX, DI 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDX] 
LEA RSI, qword ptr [RSI + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], 97 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DIL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -34 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
ADC CX, -64 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
SUB AL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
