.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 98 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
MOV BX, SI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -91 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 66 
JMP .bb_main.2 
.bb_main.2:
SUB EAX, 103 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
INC DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX] 
MOV EDX, 801259118 
ADD CL, BL 
XCHG AL, BL 
CMOVNO EBX, EBX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV AL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
