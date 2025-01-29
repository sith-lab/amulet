.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -37 # instrumentation
CMOVNBE RSI, RDI 
XCHG DL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
CMOVNZ RAX, RAX 
CMOVL DI, BX 
SUB AX, CX 
JMP .bb_main.1 
.bb_main.1:
SUB BL, -27 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
SUB EDI, 123 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RBX] 
SBB AX, 29015 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
MOV AL, AL 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
ADD CL, AL 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
CMOVNO CX, DI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
MOV EBX, ESI 
IMUL SI 
IMUL SI, DX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
ADC AX, -21400 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], BX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
