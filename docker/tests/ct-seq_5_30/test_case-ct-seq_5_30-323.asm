.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV AL, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -90 
IMUL BL 
JMP .bb_main.1 
.bb_main.1:
CLD  
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 39 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
SBB AL, -83 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 13022 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RBX] 
MOV RAX, RCX 
MUL AL 
ADD DIL, 33 # instrumentation
CMOVNZ DX, DX 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -47 # instrumentation
CMOVLE EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
MOVZX EDX, DL 
CMOVZ DI, CX 
CMOVO RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
MOVZX BX, DL 
SUB EAX, -1747922966 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, AL 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RBX] 
INC ESI 
CMOVNS RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
