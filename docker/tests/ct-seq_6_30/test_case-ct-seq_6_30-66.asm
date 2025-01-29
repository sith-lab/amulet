.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -78 
CMOVNB ESI, EAX 
CMOVNB ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -739 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EAX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RAX] 
SBB CL, AL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
JNBE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD DIL, -20 # instrumentation
MOV DI, DX 
ADC RAX, -627376882 
ADC EDX, -127 
IMUL RCX, RDX, -66 
ADD DIL, -85 # instrumentation
JL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EAX 
DEC DIL 
MOV RDX, 309330721303664563 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ECX 
LEA RAX, qword ptr [RCX + RSI + 52321] 
DEC RSI 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
