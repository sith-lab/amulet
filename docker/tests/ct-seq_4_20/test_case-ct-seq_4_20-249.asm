.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -17 # instrumentation
ADC EAX, -128848430 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
CMOVO SI, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDI] 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
CMOVNS RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -105 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB RDX, -49 
BSWAP RBX 
CMP BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
