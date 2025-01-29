.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
ADD SIL, 117 # instrumentation
CMOVNZ EDX, ESI 
CMOVNP AX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
MOV DX, 17071 
XCHG RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
SUB EDI, 13 
CMOVBE EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RBX] 
CMOVBE CX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RBX] 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOV EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 8 # instrumentation
CMOVNS DX, CX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
SUB EDX, 120 
CLD  
LEA RSI, qword ptr [RSI + RSI + 10405] 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD BL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
