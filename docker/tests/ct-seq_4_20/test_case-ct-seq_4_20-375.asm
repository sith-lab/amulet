.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 94 # instrumentation
CMOVZ EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 39 
ADD DX, CX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DIL 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 18 # instrumentation
CMOVNS SI, SI 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RBX] 
CMP EAX, EBX 
ADC RAX, -1087334387 
IMUL BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 85 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
CMOVNZ BX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
