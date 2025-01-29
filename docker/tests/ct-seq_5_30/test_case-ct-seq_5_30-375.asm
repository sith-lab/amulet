.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC AL 
ADD AX, 6353 
MOVZX RDX, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -11 
LEA SI, qword ptr [RAX + RCX] 
LEA RDX, qword ptr [RDI + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -52 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
CMP BL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVZX ECX, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
ADC AX, 14412 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DX 
SUB AX, CX 
JMP .bb_main.3 
.bb_main.3:
MOVZX SI, SIL 
CMP SIL, -75 
AND RAX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RAX] 
STD  
IMUL EAX, EBX 
MOV BL, -33 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RBX 
SUB AL, 55 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DI 
XCHG DL, DL 
MUL AL 
ADC RAX, -1289045013 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
